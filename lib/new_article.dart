import 'package:docpost/new_article_box.dart';
import 'package:flutter/material.dart';

class NewArticle extends StatelessWidget {
  const NewArticle({Key? key, required this.title}) : super(key: key);

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
                  hint: 'Add image',
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
              ],
            ))
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Container(
        //         alignment: Alignment.center,
        //         width: double.infinity,
        //         margin: const EdgeInsets.all(10),
        //         child: Column(
        //           children: <Widget>[
        //             Column(
        //               children: const [
        //                 TextField(
        //                   decoration: InputDecoration(
        //                     border: OutlineInputBorder(),
        //                     fillColor: Color.fromARGB(221, 211, 211, 211),
        //                     filled: true,
        //                     labelText: 'Date: 1 January 2000',
        //                   ),
        //                 ),
        //                 SizedBox(height: 15),
        //                 TextField(
        //                   decoration: InputDecoration(
        //                     border: OutlineInputBorder(),
        //                     fillColor: Color.fromARGB(221, 211, 211, 211),
        //                     filled: true,
        //                     labelText: 'Title: Vaccine Covid-19',
        //                   ),
        //                 ),
        //                 SizedBox(height: 15),
        //                 TextField(
        //                   decoration: InputDecoration(
        //                     border: OutlineInputBorder(),
        //                     fillColor: Color.fromARGB(221, 211, 211, 211),
        //                     filled: true,
        //                     hintText: 'Detail: Get 3rd vaccinate at ...',
        //                     contentPadding:
        //                         EdgeInsets.only(left: 10, bottom: 150),
        //                   ),
        //                 ),
        //                 SizedBox(height: 15),
        //                 TextField(
        //                   decoration: InputDecoration(
        //                     border: OutlineInputBorder(),
        //                     fillColor: Color.fromARGB(221, 211, 211, 211),
        //                     filled: true,
        //                     labelText: 'Credit: https://.......',
        //                   ),
        //                 ),
        //                 SizedBox(height: 15),
        //               ],
        //             ),
        //             Container(
        //               alignment: Alignment.topRight,
        //               child: ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                   primary: Colors.redAccent,
        //                 ),
        //                 child: const Text('Finish'),
        //                 onPressed: () {},
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
