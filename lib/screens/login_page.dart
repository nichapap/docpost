import 'package:docpost/widgets/login_box.dart';
import 'package:docpost/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        // backgroundColor: const Color.fromARGB(255, 175, 211, 76),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Log in as Admin',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LoginTextField(
              icon: Icon(Icons.person),
              color: Color.fromARGB(221, 211, 211, 211),
              hint: 'Your email',
            ),
            SizedBox(
              height: 20,
            ),
            LoginTextField(
              icon: Icon(Icons.password),
              color: Color.fromARGB(221, 211, 211, 211),
            ),
            SizedBox(
              height: 20,
            ),
            SignInButton(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
