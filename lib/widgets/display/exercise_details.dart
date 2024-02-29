import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:strive/models/fitness/exercise.dart';
import 'package:strive/providers/meta/strive_user.dart';

class ExerciseDetails extends ConsumerStatefulWidget {
  final Exercise exercise;

  const ExerciseDetails({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  ConsumerState<ExerciseDetails> createState() => _ExerciseDetailsState();
}

class _ExerciseDetailsState extends ConsumerState<ExerciseDetails> {
  bool _isSaved = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      _isSaved = ref
          .read(striveUserNotifierProvider.notifier)
          .checkIsSaved(widget.exercise.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.exercise.name,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              if (_isSaved) {
                final wasRemoved = await ref
                    .read(striveUserNotifierProvider.notifier)
                    .removeExercise(widget.exercise.id);
                setState(() {
                  _isSaved = !wasRemoved;
                });
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
                    .saveExercise(widget.exercise.id);
                setState(() {
                  _isSaved = wasSaved;
                });
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
                _isSaved ? Icons.star : Icons.star_border,
                key: ValueKey(_isSaved),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.exercise.id,
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
              'created by ${widget.exercise.creatorsUsername}, on ${DateFormat.yMd().format(widget.exercise.creationDate)}',
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Recommended Sets: ${widget.exercise.recommendedSetsMin} - ${widget.exercise.recommendedSetsMax}',
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Recommended Reps: ${widget.exercise.recommendedRepsMin} - ${widget.exercise.recommendedRepsMax}',
            ),
          ],
        ),
      ),
    );
  }
}
