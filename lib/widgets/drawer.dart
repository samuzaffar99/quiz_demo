import 'package:flutter/material.dart';

import 'navigation.dart';

// https://flutter.dev/docs/cookbook/design/drawer
class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);
  final title = "Widgets Demo";

  MaterialPageRoute getRoute() {
    return MaterialPageRoute(builder: (context) => const NavDemo());
  }

  navigateToSecondPage() {}

  Widget get _drawer => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              enabled: true,
              title: const Text('Example Item 1'),
              onTap: () => navigateToSecondPage,
            ),
            const ListTile(title: Text('Example Item 2')),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer Demo")),
      drawer: _drawer,
    );
  }
}
