import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/fitness/workout.dart';
import 'package:strive/providers/fitness/exercises.dart';
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
  List<ExercisePointer> addedExercises = [];

  _openAddExerciseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => AddExercise(
        onAddExercise: _addExercise,
        currentWorkoutPosition: addedExercises.length + 1,
        currentSupersetPosition: 1,
      ),
      isScrollControlled: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      useSafeArea: true,
    );
  }

  void _addExercise(ExercisePointer exercisePointer) {
    setState(() {
      addedExercises.add(exercisePointer);
    });
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
          'workoutExercises': addedExercises,
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
    final exercises = ref.watch(exercisesProvider);
    return Form(
      key: _form,
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                const Text('Add Exercise'),
                IconButton(
                  onPressed: _openAddExerciseOverlay,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if (addedExercises.isNotEmpty)
              ListDisplayHorizontal(
                containers: addedExercises.map((addedExercise) {
                  return exercises.when(
                    data: (data) {
                      final foundExercise = data.firstWhere(
                          (exercise) => addedExercise.ids[0] == exercise.id);
                      return ExerciseCard(exercise: foundExercise);
                    },
                    error: (error, stack) => SliverToBoxAdapter(
                      child: Text('Error: $error'),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }).toList(),
                containerHeight: 150,
                titleWidget: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Added Exercises',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
