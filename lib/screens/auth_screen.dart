import 'dart:io';

import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:strive/widgets/user/user_image_picker.dart';

final _firebase = FirebaseAuth.instance;

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredUsername = '';
  var _enteredPassword = '';
  String? _enteredWeight = '';
  var _enteredWeightType = 'pounds';
  File? _selectedImage;
  DateTime? _selectedDate;
  var _isAuthenticating = false;
  final _focusNode = FocusNode();
  final _birthdate = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        print('start date picker');
        _presentDatePicker();
        _focusNode.unfocus();
      }
    });
  }

  void _submit() async {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    _formKey.currentState!.save();

    try {
      setState(() {
        _isAuthenticating = true;
      });
      if (_isLogin) {
        await _firebase.signInWithEmailAndPassword(
          email: _enteredEmail,
          password: _enteredPassword,
        );
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
          email: _enteredEmail,
          password: _enteredPassword,
        );

        await _createInitialUser(userCredentials);
      }
    } on FirebaseAuthException catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.message ?? 'Authentication Failed'),
          ),
        );
      }
      setState(() {
        _isAuthenticating = false;
      });
    }
  }

  Future<void> _createInitialUser(UserCredential userCredentials) async {
    final now = DateTime.now();
    final user = FirebaseFirestore.instance
        .collection('users')
        .doc(userCredentials.user!.uid);

    /* Set username and email. */
    await user.set({
      'username': _enteredUsername,
      'email': _enteredEmail,
      'creationDate': now,
      'privatePrograms': [],
      'savedPrograms': [],
      'savedWorkouts': [],
      'savedExercises': [],
      'completedWorkouts': [],
      'completedExercises': [],
    });

    /* Store and set user image, if set. */
    String? imageUrl;
    if (_selectedImage != null) {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('userImages')
          .child('${userCredentials.user!.uid}.jpg');
      await storageRef.putFile(_selectedImage!);
      imageUrl = await storageRef.getDownloadURL();
      await user.update({
        'imageUrl': imageUrl,
      });
    }

    /* Set birthdate, if set. */
    await user.update({
      'birthdate': _selectedDate,
    });

    /* Set first weight, if set. */
    if (_enteredWeight?.trim() != '') {
      await user.update({
        'weights': [
          {
            'value': int.parse(_enteredWeight!),
            'weightType': _enteredWeightType,
            'dateEntered': now,
          }
        ],
      });
    } else {
      await user.update({
        'weights': [],
      });
    }
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 120, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
      _birthdate.text = DateFormat.yMd().format(_selectedDate!);
    }
  }

  @override
  void dispose() {
    _birthdate.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Strive'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    bottom: 20,
                    right: 20,
                  ),
                  width: 200,
                  child: Image.asset('assets/images/dumbbell.jpg'),
                ),
                Card(
                  margin: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!_isLogin)
                              UserImagePicker(
                                onPickImage: (pickedImage) {
                                  _selectedImage = pickedImage;
                                },
                              ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Email Address'),
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                              validator: (value) {
                                if (value == null ||
                                    value.trim().isEmpty ||
                                    !value.contains('@')) {
                                  return 'Please enter a valid email address.';
                                }
                                return null;
                              },
                              onSaved: ((newValue) {
                                _enteredEmail = newValue!;
                              }),
                            ),
                            if (!_isLogin)
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Username',
                                ),
                                autocorrect: false,
                                enableSuggestions: false,
                                textCapitalization: TextCapitalization.none,
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().isEmpty ||
                                      value.trim().length < 4) {
                                    return 'Please enter at least 4 characters';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _enteredUsername = value!;
                                },
                              ),
                            TextFormField(
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                              onSaved: ((newValue) {
                                _enteredPassword = newValue!;
                              }),
                            ),
                            if (!_isLogin)
                              TextField(
                                focusNode: _focusNode,
                                readOnly: true,
                                controller: _birthdate,
                                decoration: const InputDecoration(
                                  label: Row(
                                    children: [
                                      Text('Birthdate'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        '(optional)',
                                        style: TextStyle(fontSize: 10.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            if (!_isLogin)
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        label: Row(
                                          children: [
                                            Text('Weight'),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              '(optional)',
                                              style: TextStyle(fontSize: 10.0),
                                            )
                                          ],
                                        ),
                                      ),
                                      validator: (value) {
                                        if ((value != null &&
                                                value!.trim().isNotEmpty) &&
                                            (int.tryParse(value) == null ||
                                                int.tryParse(value)! < 0)) {
                                          return 'Please enter a valid weight, or none at all.';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _enteredWeight = value!;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: DropdownButtonFormField(
                                      value: _enteredWeightType,
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'pounds',
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10),
                                            child: Text(
                                              'lb',
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'kilograms',
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10),
                                            child: Text(
                                              'kg',
                                            ),
                                          ),
                                        ),
                                      ],
                                      onSaved: (value) {
                                        _enteredWeightType = value!;
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return 'Unselected event.';
                                        }
                                        return null;
                                      },
                                      onChanged: (value) {
                                        print('$value changed');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            const SizedBox(
                              height: 12,
                            ),
                            if (_isAuthenticating)
                              const CircularProgressIndicator(),
                            if (!_isAuthenticating)
                              ElevatedButton(
                                onPressed: _submit,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer),
                                child: Text(_isLogin ? 'Login' : 'Signup'),
                              ),
                            if (!_isAuthenticating)
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isLogin = !_isLogin;
                                  });
                                },
                                child: Text(_isLogin
                                    ? 'Create an account'
                                    : 'I already have an account'),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
