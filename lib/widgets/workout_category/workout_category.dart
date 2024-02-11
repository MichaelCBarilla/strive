import 'package:flutter/material.dart';

class WorkoutCategory extends StatelessWidget {
  const WorkoutCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Category Title',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amber,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                Container(
                  height: 150,
                  width: 200,
                  color: Colors.amber,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                Container(
                  height: 150,
                  width: 200,
                  color: Colors.amber,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
