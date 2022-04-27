import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:docpost/widgets/search_bar.dart';
import 'package:get/get.dart';
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
    final response = await Dio().get("https://odd-mole-44.loca.lt");
    setState(() {
      posts = response.data;
    });
  }

  Future<void> searchPosts(String search) async {
    final response =
        await Dio().get("https://odd-mole-44.loca.lt/?title=$search");
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
                  title: Text(post['title']),
                  subtitle: Text(post['time']),
                ),
            ],
          ),
        ),
      ),
    );
  }
  // late QuerySnapshot snapshotData;
  // bool isExcecuted = false;
  // @override
  // Widget build(BuildContext context) {
  //   Widget searchedData() {
  //     return ListView.builder(
  //       itemCount: snapshotData.docs.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return Card(
  //           color: Colors.orange[50],
  //           child: ListTile(
  //             title: Text(
  //               snapshotData.docs[index]['title'],
  //               style:
  //                   const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  //             ),
  //             subtitle: Column(
  //               children: [
  //                 Text(
  //                   snapshotData.docs[index]['credit'],
  //                   style: const TextStyle(
  //                       fontWeight: FontWeight.bold, fontSize: 16),
  //                 ),
  //                 const FittedBox(),
  //                 Text(
  //                   snapshotData.docs[index]['article'],
  //                   style: const TextStyle(
  //                       fontWeight: FontWeight.bold, fontSize: 20),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       },
  //     );
  //   }

  //   return Scaffold(
  //     resizeToAvoidBottomInset: false,
  //     appBar: AppBar(
  //       actions: [
  //         Row(
  //           children: [
  //             GetBuilder<DataController>(
  //               init: DataController(),
  //               builder: (val) {
  //                 return IconButton(
  //                   icon: const Icon(Icons.search),
  //                   onPressed: () {
  //                     val.queryData(searchController.text).then(
  //                       (value) {
  //                         snapshotData = value;
  //                         setState(
  //                           () {
  //                             isExcecuted = true;
  //                           },
  //                         );
  //                       },
  //                     );
  //                   },
  //                 );
  //               },
  //             ),
  //             IconButton(
  //               icon: const Icon(Icons.clear),
  //               onPressed: () {
  //                 setState(
  //                   () {
  //                     isExcecuted = false;
  //                   },
  //                 );
  //               },
  //             )
  //           ],
  //         ),
  //       ],
  //       title: TextField(
  //         style: const TextStyle(color: Colors.black),
  //         decoration: const InputDecoration(
  //           hintText: 'Search',
  //           hintStyle: TextStyle(color: Colors.black),
  //         ),
  //         controller: searchController,
  //       ),
  //       backgroundColor: Colors.grey[50],
  //     ),
  //     body: isExcecuted
  //         ? searchedData()
  //         : SingleChildScrollView(
  //             child: Column(
  //               children: [
  //                 Container(
  //                   height: 450,
  //                   // child: const PostInformation(),
  //                 ),
  //               ],
  //             ),
  //           ),
  //   );
  // }
}
