import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            child: FittedBox(child: Icon(Icons.favorite_border, size: 300)),
          ), // عشان استخدم  fitted box لازم يكون عندي مساحة محددة فوقي زي ال flxible
          Container(height: 300, color: Colors.grey.shade100),
          Expanded(
            child: Container(
              height: 150,
              color: Colors.yellow,
              child: FittedBox(fit: BoxFit.scaleDown, child: Icon(Icons.abc)),
            ),
          ),
          Container(height: 150, color: Colors.blue),
        ],
      ),
    );
  }
}
