import 'package:flutter/material.dart';

class NewProgram extends StatefulWidget {
  const NewProgram({super.key});

  @override
  State<NewProgram> createState() => _NewProgramState();
}

class _NewProgramState extends State<NewProgram> {
  final _form = GlobalKey<FormState>();
  String _enteredName = '';

  void _submitProgram() {
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
        ],
      ),
    );
  }
}
