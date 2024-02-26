import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:strive/widgets/workout_category/new_program.dart';
import 'package:strive/widgets/workout_category/program_display.dart';

class ProgramsScreen extends StatefulWidget {
  const ProgramsScreen({super.key});

  @override
  State<ProgramsScreen> createState() => _ProgramsScreenState();
}

class _ProgramsScreenState extends State<ProgramsScreen> {
  void _openAddCategoryOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewProgram(),
      isScrollControlled: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      useSafeArea: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Strive'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).colorScheme.onPrimary,
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _openAddCategoryOverlay,
                      child: const Text('Add Program'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add Workout'),
                    ),
                  ),
                ],
              ),
            ),
            const ProgramDisplay(),
          ],
        ),
      ),
    );
  }
}
