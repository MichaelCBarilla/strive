import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:strive/util/string.dart';

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
  String _enteredRepType = '';
  String _repLabel = '';
  String _repValidateMessage = '';
  String _enteredRecommendedRepsMin = '';
  String _enteredRecommendedRepsMax = '';

  void _submitExercise() async {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    int setsMin = int.parse(_enteredRecommendedSetsMin);
    int setsMax = int.parse(_enteredRecommendedSetsMax);
    if (setsMin > setsMax) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sets minimum can\'t be more than Sets Maximum'),
        ),
      );
      return;
    }

    int repsMin = int.parse(_enteredRecommendedRepsMin);
    int repsMax = int.parse(_enteredRecommendedRepsMax);
    print(repsMin);
    if (repsMin > repsMax) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '$_repLabel minimum can\'t be more than Reps Maximum',
          ),
        ),
      );
      return;
    }

    try {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get();
      if (userSnapshot.exists) {
        Map<String, dynamic> userData =
            userSnapshot.data() as Map<String, dynamic>;
        await FirebaseFirestore.instance.collection('exercises').add({
          'name': _enteredName,
          'creatorsUsername': userData['username'],
          'creationDate': DateTime.now(),
          'recommendedSetsMax': _enteredRecommendedSetsMax,
          'recommendedSetsMin': _enteredRecommendedSetsMin,
          'recommendedRepsMax': _enteredRecommendedRepsMax,
          'recommendedRepsMin': _enteredRecommendedRepsMin,
          'repType': _enteredRepType,
        });
        print('Object added to collection successfully');
      } else {
        print('Can\'t find user');
      }
    } catch (e) {
      print('Error adding object to collection: $e');
    }

    Navigator.pop(context);
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
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('Recommended Sets Minimum'),
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
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('Recommended Sets Maximum'),
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
            DropdownButtonFormField(
              value: _enteredRepType,
              items: const [
                DropdownMenuItem(
                  value: '',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Text(
                      'Please select a rep type',
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 'count',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Text(
                      'Count',
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 'duration',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Text(
                      'Duration (seconds)',
                    ),
                  ),
                ),
              ],
              validator: (value) {
                if (value == null || value == '') {
                  return 'Unselected event.';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _enteredRepType = value!;
                  switch (value) {
                    case 'count':
                      _repLabel = 'Rep Amount';
                      _repValidateMessage = 'reps';
                      break;
                    case 'duration':
                      _repLabel = 'Duration';
                      _repValidateMessage = 'seconds';
                      break;
                    default:
                      _repLabel = 'Please select a rep type.';
                      _repValidateMessage = 'Not a valid rep type.';
                  }
                });
              },
            ),
            if (_enteredRepType != '')
              const SizedBox(
                height: 20,
              ),
            if (_enteredRepType != '')
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text(
                          'Recommended $_repLabel Minimum',
                        ),
                      ),
                      onSaved: (value) {
                        _enteredRecommendedRepsMin = value!;
                      },
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! < 1) {
                          return 'Please enter a valid minimum amount of $_repValidateMessage you would recommend for this exercise.';
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text(
                          'Recommended $_repLabel Maximum',
                        ),
                      ),
                      onSaved: (value) {
                        _enteredRecommendedRepsMax = value!;
                      },
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! < 1) {
                          return 'Please enter a valid maximum amount of $_repValidateMessage you would recommend for this exercise.';
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
      ),
    );
  }
}
