import 'dart:developer';

import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          log(constraints.maxWidth.toString());
          if (constraints.maxWidth <= 500) {
            return MobileLayout();
          }
          // } else if (constraints.maxWidth > 500 &&
          //     constraints.maxWidth < 1000) {
          //   return Text('tablet layout');
          else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DetialsPage(num: index);
                  },
                ),
              );
            },
            child: Container(
              color: Colors.yellow,
              child: ListTile(title: Text('$index')),
            ),
          ),
        );
      },
    );
  }
}

class DetialsPage extends StatelessWidget {
  const DetialsPage({super.key, required this.num});
  final int num;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('${num}')),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  DesktopLayout({super.key});
  int number = 1;

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

int number = 1;

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    number = index + 1;
                    setState(() {});
                  },
                  child: Container(
                    color: Colors.yellow,
                    child: ListTile(title: Text('${index + 1}')),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(child: Center(child: Text(number.toString()))),
      ],
    );
  }
}
