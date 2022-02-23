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
      body: Center(
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
            )
          ],
        ),
      ),
    );
  }
}
