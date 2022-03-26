// import 'package:docpost/main.dart';
// import 'package:docpost/sign_in_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import 'auth.dart';
// import 'my_home_page.dart';

// class LandingPage extends StatefulWidget {
//   const LandingPage({Key? key, required this.auth}) : super(key: key);
//   final AuthBase auth;

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   late User _user;

//   @override
//   void initState() {
//     super.initState();
//     _updateUser(widget.auth.currentUser);
//   }

//   void _updateUser(User user) {
//     setState(() {
//       _user = user;
//     });
//   }

//   Widget build(BuildContext context) {
//     if (_user == null) {
//       return SignInPage(
//         auth: widget.auth,
//         onSignIn: _updateUser,
//       );
//     }
//     return MyHomePage(
//       auth: widget.auth,
//       onSignOut: () => _updateUser(null),
//     ); // Temporary placeholder for HomePage
//   }
// }
