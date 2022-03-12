import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: Colors.lime,
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

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const MyHomePage(title: title)));
            //   },
            //   child: Text("Login"),
            // ),
          ],
        ),
      ),
    );
  }
}
