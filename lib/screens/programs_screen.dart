import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:strive/widgets/create/new_program.dart';
import 'package:strive/widgets/display/program_display.dart';

class ProgramsScreen extends StatefulWidget {
  const ProgramsScreen({super.key});

  @override
  State<ProgramsScreen> createState() => _ProgramsScreenState();
}

class _ProgramsScreenState extends State<ProgramsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProgramDisplay(),
            ProgramDisplay(),
            ProgramDisplay(),
          ],
        ),
      ),
    );
  }
}
