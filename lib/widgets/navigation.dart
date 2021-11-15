import 'package:flutter/material.dart';

class NavDemo extends StatelessWidget {
  const NavDemo({Key? key}) : super(key: key);
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
