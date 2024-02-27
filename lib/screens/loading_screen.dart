import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
