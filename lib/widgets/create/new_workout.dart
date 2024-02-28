import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:strive/models/fitness/workout.dart';
import 'package:strive/widgets/create/add_exercise.dart';

class NewWorkout extends StatefulWidget {
  const NewWorkout({super.key});

  @override
  State<NewWorkout> createState() => _NewWorkoutState();
}

class _NewWorkoutState extends State<NewWorkout> {
  final _form = GlobalKey<FormState>();
  String _enteredName = '';
  List<ExercisePointer> addedExercises = [];

  _openAddExerciseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => AddExercise(onAddExercise: _addExercise),
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
