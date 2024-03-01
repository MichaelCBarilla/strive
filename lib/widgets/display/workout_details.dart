import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:strive/models/fitness/workout.dart';
import 'package:strive/providers/meta/strive_user.dart';

class WorkoutDetails extends ConsumerStatefulWidget {
  final Workout workout;

  const WorkoutDetails({
    Key? key,
    required this.workout,
  }) : super(key: key);

  @override
  ConsumerState<WorkoutDetails> createState() => _WorkoutDetailsState();
}

class _WorkoutDetailsState extends ConsumerState<WorkoutDetails> {
  bool _isSaved = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      _isSaved = ref
          .read(striveUserNotifierProvider.notifier)
          .checkIsWorkoutSaved(widget.workout.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.workout.name,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              if (_isSaved) {
                final wasRemoved = await ref
                    .read(striveUserNotifierProvider.notifier)
                    .removeWorkout(widget.workout.id);
                setState(() {
                  _isSaved = !wasRemoved;
                });
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(wasRemoved
                          ? 'Workout removed.'
                          : 'Workout could not be removed.'),
                    ),
                  );
                }
              } else {
                final wasSaved = await ref
                    .read(striveUserNotifierProvider.notifier)
                    .saveWorkout(widget.workout.id);
                setState(() {
                  _isSaved = wasSaved;
                });
                if (context.mounted) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(wasSaved
                          ? 'Workout saved.'
                          : 'Workout could not be saved.'),
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
              tag: widget.workout.id,
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
              'created by ${widget.workout.creatorsUsername}, on ${DateFormat.yMd().format(widget.workout.creationDate)}',
            ),
            const SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
