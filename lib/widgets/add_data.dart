import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddData extends StatelessWidget {
  AddData({
    Key? key,
    this.time = 'kk:mm:ss \n EEE d MMM',
    this.title = 'Title',
    this.article = 'Article',
    this.credit = 'Credit',
    // this.image = '',
    this.color = Colors.amber,
    this.text = 'Finish',
  }) : super(key: key);

  String time;
  String title;
  String article;
  String credit;
  // final String image;
  Color color;
  String text;

  @override
  Widget build(BuildContext context) {
    CollectionReference posts = FirebaseFirestore.instance.collection('post');

    DateTime now = DateTime.now();

    String stringTime =
        "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";

    Future<void> addData() {
      return posts
          .add({
            'time': stringTime,
            'title': title,
            'article': article,
            'credit': credit
          })
          .then((value) => print("Post Added"))
          .catchError((error) => print("Failed to add post: $error"));
    }

    return Column(
      children: <Widget>[
        TextField(
          maxLines: null,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Title: Covid-19',
          ),
          onChanged: (value) {
            title = value;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          maxLines: null,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Detail: About Covid-19',
          ),
          onChanged: (value) {
            article = value;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          maxLines: null,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Credit: www.abc.com',
          ),
          onChanged: (value) {
            credit = value;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: addData,
          child: Text(text),
        ),
      ],
    );
  }
}
