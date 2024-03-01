import 'package:flutter/material.dart';

class ListDisplayHorizontal extends StatelessWidget {
  const ListDisplayHorizontal({
    super.key,
    required this.containers,
    required this.containerHeight,
    required this.titleWidget,
  });

  final List<Widget> containers;
  final double containerHeight;
  final Widget titleWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              child: titleWidget),
          SizedBox(
            height: containerHeight,
            child: ListView.builder(
              itemCount: containers.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return containers[index];
              }),
            ),
          ),
        ],
      ),
    );
  }
}
