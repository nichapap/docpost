import 'package:flutter/material.dart';
import 'package:docpost/widgets/search_bar.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: const [
            Search(),
          ],
        ),
      ),
    );
  }
}
