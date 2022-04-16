import 'package:docpost/screens/new_article_page.dart';
import 'package:docpost/service/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:docpost/screens/articles_page.dart';
import 'contacts_page.dart';

class MyAdminHomePage extends StatefulWidget {
  const MyAdminHomePage({Key? key, required this.onSignOut, required this.auth})
      : super(key: key);
  final VoidCallback onSignOut;
  final AuthBase auth;

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      onSignOut();
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

  @override
  State<MyAdminHomePage> createState() => _MyAdminHomePageState();
}

class _MyAdminHomePageState extends State<MyAdminHomePage> {
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
        title: const Text('Docpost(Admin)'),
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
                            onPressed: () => {widget._signOut()},
                            child: const Text(
                              'Sign Out',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(400, 60),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
          )
        ],
      ),
      body: screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NewArticlePage(
              title: 'New Post',
            ),
          ),
        ),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
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
