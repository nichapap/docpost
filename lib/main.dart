import 'package:docpost/landing_page.dart';
import 'package:docpost/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'articles_page.dart';
import 'contacts_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Docpost',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        // home: const MyHomePage(title: 'Docpost'),
        home: const LandingPage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title})
      : super(key: key);
  final String title;

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
            tooltip: 'Login',
            onPressed: () {},
          )
        ],
      ),
      body: screens[_currentIndex],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPost()));
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
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
