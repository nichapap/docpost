import 'package:flutter/material.dart';
import 'search.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
            Search(),
            
          ],
        ),
      ),
    );
  }
}
