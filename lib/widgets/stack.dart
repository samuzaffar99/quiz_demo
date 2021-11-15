import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Demo")),
      body: Stack(
        children: const [
          Text("Top"),
          Text("Bottom"),
          Text("Center"),
        ],
      ),
    );
  }
}
