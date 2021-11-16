import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Demo")),
      body: Stack(
        children: const [
          Align(alignment: Alignment.topCenter, child: Text("Align TopCenter")),
          Align(
              alignment: Alignment.centerLeft, child: Text("Align CenterLeft")),
          Positioned(top: 360, left: 320, child: Text("Positioned")),
          // TODO Add a Widget to the bottomLeft via align
          // TODO Add a Widget to the topRight via positioned
        ],
      ),
    );
  }
}
