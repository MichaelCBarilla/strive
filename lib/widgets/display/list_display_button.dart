import 'package:flutter/material.dart';

class ListDisplayButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget title;
  final Widget? leading;
  final Widget? trailing;

  const ListDisplayButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.leading,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: title,
        leading: leading,
        trailing: trailing,
      ),
    );
  }
}
