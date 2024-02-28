import 'package:flutter/material.dart';

class NewProgram extends StatefulWidget {
  const NewProgram({super.key});

  @override
  State<NewProgram> createState() => _NewProgramState();
}

class _NewProgramState extends State<NewProgram> {
  final _form = GlobalKey<FormState>();
  String _enteredTitle = '';

  void _submitCategory() {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    /* Add to Firebase */

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
      child: SizedBox(
        height: double.infinity,
        child: Form(
          key: _form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
                onSaved: (value) {
                  _enteredTitle = value!;
                },
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a valid category title.';
                  }
                  return null;
                },
              ),
              const Spacer(),
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
                    onPressed: _submitCategory,
                    child: const Text('Create Program'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
