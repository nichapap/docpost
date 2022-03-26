import 'package:flutter/material.dart';
import 'custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({Key? key, 
    String text = 'Signin',
    Color color = Colors.blue,
    Color textColor = Colors.black,
    VoidCallback? onPressed,
  })  : super(key: key, 
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
