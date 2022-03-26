import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    this.height = 50,
    this.icon = const Icon(Icons.people),
    this.color = Colors.green,
    this.hint = 'Please fill some',
  }) : super(key: key);
  final double height;
  final Widget icon;
  final Color color;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      height: height,
      child: TextField(
        autocorrect: false,
        enableSuggestions: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          hintText: hint,
        ),
      ),
    );
  }
}
