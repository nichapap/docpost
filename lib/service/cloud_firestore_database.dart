import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class AddUser extends StatelessWidget {
  const AddUser({
    Key? key,
    this.fullName = 'Tommy',
    this.company = 'A company',
    this.age = 28,
  }) : super(key: key);

  final String fullName;
  final String company;
  final int age;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Future<void> addUser() {
      return users
          .add({'full_name': fullName, 'company': company, 'age': age})
          // ignore: avoid_print
          .then((value) => print("User Added"))
          // ignore: avoid_print
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: const Text(
        "Add User",
      ),
    );
  }
}
