import 'dart:developer';

import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log(height.toString());
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(height: height * .2, width: 300, color: Colors.red),
            Container(height: height * .2, width: 300, color: Colors.blue),
            Container(height: height * .2, width: 300, color: Colors.green),
          ],
        ),
      ),
    );
  }
}