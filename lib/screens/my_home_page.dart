import 'dart:ui';

import 'package:docpost/screens/email_sign_in_page.dart';
import 'package:docpost/screens/new_article_page.dart';
import 'package:docpost/screens/sign_in_page.dart';
import 'package:docpost/service/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:docpost/screens/articles_page.dart';
import 'contacts_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.onSignOut, required this.auth})
      : super(key: key);

  final VoidCallback onSignOut;
  final AuthBase auth;

  // Future<void> _signOut() async {
  //   try {
  //     await FirebaseAuth.instance.signOut();
  //     onSignOut();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final screens = [
    const Articles(),
    const Contacts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Docpost'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.people),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 160,
                    color: Colors.grey[200],
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmailSignInPage(
                                  auth: widget.auth,
                                ),
                              ),
                            ),
                            child: const Text(
                              'Sign In',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(400, 60),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              'Close',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(400, 60),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lime,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contact',
            backgroundColor: Colors.lime,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
