import 'package:flutter/material.dart';

class CreatorScreen extends StatelessWidget {
  const CreatorScreen({super.key});

  // void _openAddCategoryOverlay() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (ctx) => const NewProgram(),
  //     isScrollControlled: true,
  //     constraints: const BoxConstraints(maxWidth: double.infinity),
  //     useSafeArea: true,
  //   );
  // }

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
                onPressed: () {},
                child: const Text('Program'),
              ),
            ),
            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Workout'),
              ),
            ),
            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Exercise'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
