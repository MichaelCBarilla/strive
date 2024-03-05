import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:strive/models/fitness/program.dart';
import 'package:strive/providers/fitness/public_programs.dart';
import 'package:strive/widgets/display/list_display_horizontal.dart';

class ProgramsDisplay extends ConsumerWidget {
  const ProgramsDisplay({
    super.key,
    required this.program,
  });

  final Program program;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final publicPrograms = ref.watch(publicProgramsProvider);

    Widget programListView = publicPrograms.when(
      data: (publicProgramsMap) {
        var publicPrograms = publicProgramsMap.values.toList();
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListDisplayHorizontal(
              containers: [],
              containerHeight: 200,
              titleWidget: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Workouts',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            );
          },
          itemCount: publicPrograms.length,
        );
      },
      loading: () => const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) => SliverToBoxAdapter(
        child: Text('Error: $error'),
      ),
    );
    return programListView;
  }
}
