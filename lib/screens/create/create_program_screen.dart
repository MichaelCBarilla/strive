import 'package:flutter/material.dart';

class CreateProgramScreen extends StatelessWidget {
  const CreateProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Strive'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.onPrimary,
              ))
        ],
      ),
      body: const Center(
        child: Text('create Program'),
      ),
    );
  }
}
