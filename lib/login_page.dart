import 'package:docpost/login_box.dart';
import 'package:docpost/main.dart';
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
        backgroundColor: const Color.fromARGB(255, 175, 211, 76),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                fillColor: Color.fromARGB(221, 211, 211, 211),
                filled: true,
                hintText: 'Your email',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
                fillColor: Color.fromARGB(221, 211, 211, 211),
                filled: true,
                hintText: 'Your password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LoginTextField(
              height: 100,
              icon: Icon(Icons.person),
              color: Colors.teal,
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context,);
            //   child: Text("Login"),
            // ),
          ],
        ),
      ),
    );
  }
}
