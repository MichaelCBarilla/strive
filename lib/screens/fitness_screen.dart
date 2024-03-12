import 'package:flutter/material.dart';
import 'package:strive/widgets/display/exercise_display.dart';
import 'package:strive/widgets/display/programs_display.dart';
import 'package:strive/widgets/display/workouts_display.dart';

class FitnessScreen extends StatefulWidget {
  const FitnessScreen({super.key});

  @override
  State<FitnessScreen> createState() => _FitnessScreenState();
}

class _FitnessScreenState extends State<FitnessScreen> {
  String _selectedFitnessType = 'Programs';

  void _onSelectNewFitnessType(String fitnessType) {
    setState(() {
      _selectedFitnessType = fitnessType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => _onSelectNewFitnessType('Programs'),
              style: _selectedFitnessType == 'Programs'
                  ? ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(148, 243, 243, 243))
                  : null,
              child: const Text('Programs'),
            ),
            ElevatedButton(
              onPressed: () => _onSelectNewFitnessType('Workouts'),
              style: _selectedFitnessType == 'Workouts'
                  ? ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(148, 243, 243, 243))
                  : null,
              child: const Text('Workouts'),
            ),
            ElevatedButton(
              onPressed: () => _onSelectNewFitnessType('Exercises'),
              style: _selectedFitnessType == 'Exercises'
                  ? ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(148, 243, 243, 243))
                  : null,
              child: const Text('Exercises'),
            ),
          ],
        ),
        if (_selectedFitnessType == 'Programs') const ProgramsDisplay(),
        if (_selectedFitnessType == 'Workouts') const WorkoutsDisplay(),
        if (_selectedFitnessType == 'Exercises') const ExercisesDisplay(),
      ],
    );
  }
}
