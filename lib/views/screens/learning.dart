import 'package:flutter/material.dart';

class LearningHomePage extends StatefulWidget {
  const LearningHomePage({super.key});

  @override
  State<LearningHomePage> createState() => _LearningHomePageState();
}

class _LearningHomePageState extends State<LearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Row(
          children: [
            Image(image: NetworkImage("url")),
            Column(
              children: [Text("Comedy show"),
              Text("26 Apr, 6:30pm")],
            ),
            IconButton(
              padding
              onPressed: onPressed, icon: icon)
          ],
        ),
      ),
    ));
  }
}
