import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 176, 236, 127),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: const [
                            SizedBox(height: 15),
                            Text("Date: 1st Dec 2021"),
                            SizedBox(height: 15),
                            Text(
                                "Keep safe for you and the other by stay away"),
                            SizedBox(height: 15),
                            Text(
                                "Detail ............................................."),
                            SizedBox(height: 15),
                            Icon(
                              Icons.image,
                              size: 100,
                            ),
                            SizedBox(height: 15),
                            Text("Credit: www.abc.com"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
