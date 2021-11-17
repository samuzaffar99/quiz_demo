import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Demo")),
      body: Center(
        child: loadingWidget(80),
      ),
    );
  }

  Stack loadingWidget(int percentage) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          color: Colors.grey[400],
          width: 300,
          height: 20,
        ),
        Container(
          color: Colors.red,
          width: 300 * percentage / 100,
          height: 20,
        )
        // Align(alignment: Alignment.topCenter, child: Text("Align TopCenter")),
        // Align(
        //     alignment: Alignment.centerLeft, child: Text("Align CenterLeft")),
        // Positioned(top: 360, left: 320, child: Text("Positioned")),
      ],
    );
  }
}
