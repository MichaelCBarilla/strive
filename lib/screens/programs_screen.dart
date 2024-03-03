import 'package:flutter/material.dart';

import 'package:strive/widgets/display/list_display_horizontal.dart';

class ProgramsScreen extends StatefulWidget {
  const ProgramsScreen({super.key});

  @override
  State<ProgramsScreen> createState() => _ProgramsScreenState();
}

class _ProgramsScreenState extends State<ProgramsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListDisplayHorizontal(
            titleWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Program Title',
                  style: TextStyle(fontSize: 20),
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
                // height: 175,
                width: 250,
                color: Colors.amber,
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              Container(
                // height: 175,
                width: 250,
                color: Colors.amber,
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              Container(
                // height: 175,
                width: 250,
                color: Colors.amber,
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
