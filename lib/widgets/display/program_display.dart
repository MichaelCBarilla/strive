import 'package:flutter/material.dart';

import 'package:strive/models/fitness/program.dart';
import 'package:strive/widgets/display/list_display_horizontal.dart';

class ProgramDisplay extends StatelessWidget {
  const ProgramDisplay({
    super.key,
    required this.program,
  });

  final Program program;

  @override
  Widget build(BuildContext context) {
    return ListDisplayHorizontal(
      titleWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            program.name,
            style: const TextStyle(fontSize: 20),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      containerHeight: 200,
      containers: [
        Container(
          height: 175,
          width: 250,
          color: Colors.amber,
          margin: const EdgeInsets.symmetric(horizontal: 20),
        ),
        Container(
          height: 175,
          width: 250,
          color: Colors.amber,
          margin: const EdgeInsets.symmetric(horizontal: 20),
        ),
        Container(
          height: 175,
          width: 250,
          color: Colors.amber,
          margin: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ],
    );
  }
}
