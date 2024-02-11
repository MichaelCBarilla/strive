import 'package:flutter/material.dart';

class NewCategory extends StatefulWidget {
  const NewCategory({super.key});

  @override
  State<NewCategory> createState() => _NewCategoryState();
}

class _NewCategoryState extends State<NewCategory> {
  final _titleController = TextEditingController();

  void _submitCategory() {
    if (_titleController.text.trim().isEmpty) {
      return;
    }

    /* Add to Firebase */

    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
          child: SizedBox(
            height: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _titleController,
                  maxLength: 50,
                  decoration: const InputDecoration(
                    label: Text('Title'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // return SizedBox(
    //   height: 500,
    //   child: SingleChildScrollView(
    //     child: Padding(
    //       padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           TextField(
    //             controller: _titleController,
    //             maxLength: 50,
    //             decoration: const InputDecoration(
    //               label: Text('Title'),
    //             ),
    //           ),
    //           const Spacer(),
    //           TextButton(
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //             child: const Text('Cancel'),
    //           ),
    //           ElevatedButton(
    //             onPressed: _submitCategory,
    //             child: const Text('Create Category'),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
