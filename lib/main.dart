import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_training/screens/layout_builder_example.dart';
import 'package:responsive_training/screens/media_query_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LayoutBuilderExample());
  }
}

// responsive used to make all mobiles of differnt sizes shows the same ui
// adaptive used toalso make tablets and desktop the same ui no additional spaces
// 1- media query  2- layout builer
// Expanded  - flexible - fitted box - Aspect ratio
// constraints
