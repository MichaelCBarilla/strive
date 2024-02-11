import 'package:flutter/material.dart';

import 'package:strive/widgets/workout_category/new_category.dart';
import 'package:strive/widgets/workout_category/workout_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  void _openAddCategoryOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewCategory(),
      isScrollControlled: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      useSafeArea: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
                    child: const Text('Add Category'),
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
          const WorkoutCategory(),
        ],
      ),
    );
  }
}
