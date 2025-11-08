import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 3 / 1, // النسبة بين الطول والعرض width/height
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
