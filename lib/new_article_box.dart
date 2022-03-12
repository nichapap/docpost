import 'package:flutter/material.dart';

class ArticleTextField extends StatelessWidget {
  const ArticleTextField({
    Key? key,
    this.height = 50,
    this.color = Colors.grey,
    this.hint = 'Please fill some',
  }) : super(key: key);
  final double height;
  final Color color;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: height,
      color: color,
      child: TextField(
        maxLines: null,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}
