import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            child: Icon(Icons.favorite_border, size: 300),
          ), //مرنة لو فيه مساحة تاخد الهايت بتاعها تمام لو مفيش الحدود بتاعتها هتصغر
          Container(height: 250, color: Colors.grey.shade100),
          Container(height: 150, color: Colors.yellow),
          Container(height: 150, color: Colors.blue),
        ],
      ),
    );
  }
}
