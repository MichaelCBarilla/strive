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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
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
    );
  }
}
