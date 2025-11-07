import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQueryExample());
}

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

// responsive used to make all mobiles of differnt sizes shows the same ui
// adaptive used toalso make tablets and desktop the same ui no additional spaces
// 1- media query  2- layout builer
// Expanded  - flexible - fitted box - Aspect ratio
// constraints
