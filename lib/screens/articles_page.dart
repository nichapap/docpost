import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:docpost/widgets/search_bar.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:google_fonts/google_fonts.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  final TextEditingController controller = TextEditingController();
  List<dynamic> posts = [];

  Future<void> fetchPosts() async {
    final response = await Dio().get("https://late-cups-count-125-25-109-38.loca.lt");
    setState(() {
      posts = response.data;
    });
  }

  Future<void> searchPosts(String search) async {
    final response =
        await Dio().get("https://late-cups-count-125-25-109-38.loca.lt/?title=$search");
    setState(() {
      posts = response.data;
    });
  }

  @override
  void initState() {
    fetchPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My post'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh Page',
            onPressed: () {
              fetchPosts();
            }
          ),
        ],
        backgroundColor: Colors.orange[50],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TextFormField(controller: controller),
              TextButton(
                onPressed: () async {
                  await searchPosts(controller.text);
                },
                child: const Text('Search'),
              ),
              for (final post in posts)
                ListTile(
                  title: Text("Title:   " + post['title']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text("Time:   " +post['time']),
                      const SizedBox(height: 15,),
                      Text("Article:   " +post['article']),
                      const SizedBox(height: 15,),
                      Text("Credit:   " +post['credit']),
                      const SizedBox(height: 15,),
                      InkWell(
                        child: Text('More Detail', style: TextStyle(color: Colors.blue),),
                        onTap: () => launchUrlString(post['credit']),
                      ),
                      const SizedBox(height: 20,),
                      Text('____________________________________________________________'),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
