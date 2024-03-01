import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/fitness/workout.dart';
import 'package:strive/providers/fitness/public_exercises.dart';
import 'package:strive/widgets/create/add_exercise.dart';
import 'package:strive/widgets/create/exercise_card.dart';
import 'package:strive/widgets/display/list_display_horizontal.dart';

class NewWorkout extends ConsumerStatefulWidget {
  const NewWorkout({super.key});

  @override
  ConsumerState<NewWorkout> createState() => _NewWorkoutState();
}

class _NewWorkoutState extends ConsumerState<NewWorkout> {
  final _form = GlobalKey<FormState>();
  String _enteredName = '';
  List<CyclePointer> addedCycles = [];

  void _openAddExerciseOverlay(int positionInWorkout, int positionInCycle) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => AddExercise(
        onAddExercise: _addExercise,
        positionInWorkout: positionInWorkout,
        positionInCycle: positionInCycle,
      ),
      isScrollControlled: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      useSafeArea: true,
    );
  }

  void _addExercise(
      String exerciseId, int positionInWorkout, int positionInCycle) {
    /* adding exercise in an existing cycle */
    if (positionInWorkout - 1 < addedCycles.length) {
      setState(() {
        final cycle = CyclePointer(
          exercisePointers: [
            ...addedCycles[positionInWorkout - 1].exercisePointers,
            ExercisePointer(
              id: exerciseId,
              positionInCycle: positionInCycle,
            ),
          ],
          positionInWorkout: positionInWorkout,
        );
        addedCycles.removeAt(positionInWorkout - 1);
        addedCycles.add(cycle);
        addedCycles
            .sort((a, b) => a.positionInWorkout.compareTo(b.positionInWorkout));
      });
    }
    /* adding exercise in a new cycle */
    else {
      setState(() {
        addedCycles.add(
          CyclePointer(
            exercisePointers: [
              ExercisePointer(
                id: exerciseId,
                positionInCycle: positionInCycle,
              )
            ],
            positionInWorkout: positionInWorkout,
          ),
        );
      });
    }
  }

  void _submitWorkout() async {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    try {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get();
      if (userSnapshot.exists) {
        Map<String, dynamic> userData =
            userSnapshot.data() as Map<String, dynamic>;

        await FirebaseFirestore.instance.collection('workouts').add({
          'name': _enteredName,
          'creatorsUsername': userData['username'],
          'creationDate': DateTime.now(),
          'cycles':
              addedCycles.map((cyclePointer) => cyclePointer.toJson()).toList(),
        });
        print('Workout added to collection successfully');
      } else {
        print('Can\'t find user');
      }
    } catch (e) {
      print('Error adding object to collection: $e');
    }
    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final publicExercises = ref.watch(publicExercisesProvider);
    return Form(
      key: _form,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: _submitWorkout,
                  child: const Text('Create Workout'),
                ),
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Workout Name'),
              ),
              onSaved: (value) {
                _enteredName = value!;
              },
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a valid workout name.';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Add Cycle'),
                IconButton(
                  onPressed: () =>
                      _openAddExerciseOverlay(addedCycles.length + 1, 1),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            publicExercises.when(
              data: (publicExercises) {
                var cycles = addedCycles.map((addedCycle) {
                  List<Widget> cycle =
                      []; // add exercise cards for every exercise in the cycle
                  for (var addedExercise in addedCycle.exercisePointers) {
                    final foundExercise = publicExercises.firstWhere(
                        (publicExcercise) =>
                            publicExcercise.id == addedExercise.id);
                    cycle.add(ExerciseCard(exercise: foundExercise));
                  }
                  return ListDisplayHorizontal(
                    containers: [
                      ...cycle,
                      Center(
                        child: IconButton(
                          onPressed: () => _openAddExerciseOverlay(
                              addedCycle.positionInWorkout,
                              addedCycle.exercisePointers.length + 1),
                          icon: const Icon(Icons.add),
                        ),
                      )
                    ],
                    containerHeight: 200,
                    titleWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Set ${addedCycle.positionInWorkout}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  );
                }).toList();
                if (addedCycles.isNotEmpty) {
                  return Column(
                    children: cycles,
                  );
                }

                return const Text('No Cycles Added');
              },
              error: (error, stack) => SliverToBoxAdapter(
                child: Text('Error: $error'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
