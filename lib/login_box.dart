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
    return SizedBox(
      height: height,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          icon: icon,
          fillColor: color,
          filled: true,
          hintText: hint,
        ),
      ),
    );
  }
}
