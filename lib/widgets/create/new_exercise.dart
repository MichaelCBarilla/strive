import 'package:flutter/material.dart';

class NewExercise extends StatefulWidget {
  const NewExercise({super.key});

  @override
  State<NewExercise> createState() => _NewExerciseState();
}

class _NewExerciseState extends State<NewExercise> {
  final _form = GlobalKey<FormState>();
  String _enteredName = '';
  String _enteredRecommendedSetsMin = '';
  String _enteredRecommendedSetsMax = '';

  void _submitExercise() {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    /* Add to Firebase */

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Exercise Name'),
            ),
            onSaved: (value) {
              _enteredName = value!;
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter a valid exercise name.';
              }
              return null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Recommended Sets Min'),
                  ),
                  onSaved: (value) {
                    _enteredRecommendedSetsMin = value!;
                  },
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        int.tryParse(value) == null ||
                        int.tryParse(value)! < 1) {
                      return 'Please enter a valid minimum amount of sets you would recommend for this exercise.';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Recommended Sets Max'),
                  ),
                  onSaved: (value) {
                    _enteredRecommendedSetsMax = value!;
                  },
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        int.tryParse(value) == null ||
                        int.tryParse(value)! < 1) {
                      return 'Please enter a valid maximum amount of sets you would recommend for this exercise.';
                    }
                    return null;
                  },
                ),
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
                onPressed: _submitExercise,
                child: const Text('Create Exercise'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
