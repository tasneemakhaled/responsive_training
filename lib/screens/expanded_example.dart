import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(height: height / 3, color: Colors.red),
          ),
          Expanded(
            flex: 3,
            child: Container(height: height / 3, color: Colors.yellow),
          ),
          Expanded(
            flex: 4,
            child: Container(height: height / 3, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

// expanded تشتغل عالارتفاع سواء كولمن او ويدس سواء رو المتبقييييي ك نسب من الشاشة
// flex attribute in expanded widget appears its work when there are more than one expanded widget
