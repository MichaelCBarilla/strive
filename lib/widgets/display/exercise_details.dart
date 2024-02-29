import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/providers/meta/strive_user.dart';

class ExerciseDetails extends ConsumerWidget {
  final Exercise exercise;

  const ExerciseDetails({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSaved =
        ref.read(striveUserNotifierProvider.notifier).checkIsSaved(exercise.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          exercise.name,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              if (isSaved) {
                final wasRemoved = await ref
                    .read(striveUserNotifierProvider.notifier)
                    .removeExercise(exercise.id);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(wasRemoved
                          ? 'Exercise removed.'
                          : 'Exercise could not be removed.'),
                    ),
                  );
                }
              } else {
                final wasSaved = await ref
                    .read(striveUserNotifierProvider.notifier)
                    .saveExercise(exercise.id);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(wasSaved
                          ? 'Exercise saved.'
                          : 'Exercise could not be saved.'),
                    ),
                  );
                }
              }
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween(begin: 0.8, end: 1.0).animate(animation),
                  child: child,
                );
              },
              child: Icon(
                isSaved ? Icons.star : Icons.star_border,
                key: ValueKey(isSaved),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: exercise.id,
              child: Image.asset(
                'assets/images/dumbbell.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'created by ${exercise.creatorsUsername}, on ${DateFormat.yMd().format(exercise.creationDate)}',
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Recommended Sets: ${exercise.recommendedSetsMin} - ${exercise.recommendedSetsMax}',
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Recommended Reps: ${exercise.recommendedRepsMin} - ${exercise.recommendedRepsMax}',
            ),
          ],
        ),
      ),
    );
  }
}
