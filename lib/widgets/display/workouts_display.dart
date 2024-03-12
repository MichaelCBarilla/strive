import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/fitness/exercise.dart';

import 'package:strive/models/fitness/program.dart';
import 'package:strive/providers/fitness/all_exercises.dart';
import 'package:strive/providers/fitness/public_programs.dart';
import 'package:strive/providers/meta/strive_user.dart';
import 'package:strive/widgets/display/list_display_horizontal.dart';

class WorkoutsDisplay extends ConsumerWidget {
  const WorkoutsDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text('my workouts list');
  }
}
