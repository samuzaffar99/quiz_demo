import 'package:flutter/material.dart';

// https://flutter.dev/docs/cookbook/design/drawer
class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  Widget get _drawer => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(title: Text('Example Item 1')),
            ListTile(title: Text('Example Item 2')),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer Demo")),
      //Todo add drawer
      drawer: null,
    );
  }
}
