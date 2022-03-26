import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {Key? key, this.color = Colors.redAccent, this.text = 'Finish'})
      : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
