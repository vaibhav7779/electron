import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  const CustomAppBar({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(247, 182, 26, 1),
      centerTitle: false,
      title: Text(text),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[Icon(Icons.question_mark_rounded), SizedBox(width: 15)],
      // actions: <Widget>[Icon(Icons.question_mark_rounded), SizedBox(width: 15)],
    );
  }
}
