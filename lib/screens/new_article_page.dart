import 'package:docpost/widgets/submit_button.dart';
import 'package:docpost/widgets/new_article_box.dart';
import 'package:docpost/widgets/new_article_image_box.dart';
import 'package:flutter/material.dart';

class NewArticlePage extends StatelessWidget {
  const NewArticlePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          children: const <Widget>[
            ArticleTextField(
              hint: 'Date: 1st January 2022',
            ),
            SizedBox(
              height: 10,
            ),
            ArticleTextField(
              hint: 'Title: Covid-19',
            ),
            SizedBox(
              height: 10,
            ),
            ArticleTextField(
              height: 80,
              hint: 'Detail: About Covid-19',
            ),
            SizedBox(
              height: 10,
            ),
            ArticleTextField(
              hint: 'Credit: www.abc.com',
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: ImagePickerBox(),
            ),
            SizedBox(
              height: 10,
            ),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}
