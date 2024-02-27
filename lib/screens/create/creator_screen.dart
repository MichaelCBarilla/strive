import 'package:flutter/material.dart';
import 'package:strive/screens/create/create_program_screen.dart';

class CreatorScreen extends StatelessWidget {
  const CreatorScreen({super.key});

  void _selectCreation(BuildContext context, String creation) {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('What do you want to create?'),
            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (ctx) {
                      return const CreateProgramScreen();
                    }),
                  );
                },
                child: const Text('Program'),
              ),
            ),
            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (ctx) {
                      return const CreateProgramScreen();
                    }),
                  );
                },
                child: const Text('Workout'),
              ),
            ),
            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (ctx) {
                      return const CreateProgramScreen();
                    }),
                  );
                },
                child: const Text('Exercise'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
