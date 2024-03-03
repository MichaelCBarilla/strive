import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/fitness/program.dart';
import 'package:strive/providers/fitness/public_workouts.dart';
import 'package:strive/widgets/create/add_workout.dart';
import 'package:strive/widgets/display/workout_card.dart';
import 'package:strive/widgets/display/list_display_horizontal.dart';

class NewProgram extends ConsumerStatefulWidget {
  const NewProgram({super.key});

  @override
  ConsumerState<NewProgram> createState() => _NewProgramState();
}

class _NewProgramState extends ConsumerState<NewProgram> {
  final _form = GlobalKey<FormState>();
  String _enteredName = '';
  WorkoutPointers addedWorkouts = WorkoutPointers(workoutIds: {});

  void _openAddWorkoutOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => AddWorkout(
        onAddWorkout: _addWorkout,
      ),
      isScrollControlled: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      useSafeArea: true,
    );
  }

  void _addWorkout(String workoutId) {
    setState(() {
      addedWorkouts.workoutIds[addedWorkouts.workoutIds.length + 1] = workoutId;
    });
  }

  void _submitProgram() async {
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

        await FirebaseFirestore.instance.collection('programs').add({
          'name': _enteredName,
          'creatorsUsername': userData['username'],
          'creationDate': DateTime.now(),
          ...addedWorkouts.toJson(),
        });
        print('Program added to collection successfully');
      } else {
        print('Can\'t find user');
      }
    } catch (e) {
      print('Error adding Program to collection: $e');
    }
    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final publicWorkouts = ref.watch(publicWorkoutsProvider);
    return Form(
      key: _form,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Program Name'),
            ),
            onSaved: (value) {
              _enteredName = value!;
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter a valid program name.';
              }
            },
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
                onPressed: _submitProgram,
                child: const Text('Create Program'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Add Workout'),
              IconButton(
                onPressed: _openAddWorkoutOverlay,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          publicWorkouts.when(
            data: (publicWorkouts) {
              List<Widget?> workouts =
                  List<Widget?>.filled(addedWorkouts.workoutIds.length, null);

              addedWorkouts.workoutIds.forEach((positionInProgram, workoutId) {
                var foundWorkout = publicWorkouts[workoutId];
                if (foundWorkout != null) {
                  workouts[positionInProgram - 1] =
                      WorkoutCard(workout: foundWorkout);
                } else {
                  print('could not find workout');
                }
              });
              if (workouts.isNotEmpty) {
                return ListDisplayHorizontal(
                  containers: workouts,
                  containerHeight: 200,
                  titleWidget: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Workouts',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                );
              }

              return const Text('No Workouts Added');
            },
            error: (error, stack) => Text('Error: $error'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
