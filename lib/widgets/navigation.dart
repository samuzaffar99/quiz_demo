import 'package:flutter/material.dart';

class NavDemo extends StatelessWidget {
  const NavDemo({Key? key}) : super(key: key);

  MaterialPageRoute getRoute() {
    return MaterialPageRoute(builder: (context) => const NavDemo());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation Demo")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, getRoute()),
              child: const Text("pop"),
            ),
            OutlinedButton(
              // TODO add push navigation, same as above
              onPressed: () => null,
              child: const Text("push"),
            ),
            OutlinedButton(
              // TODO add pushReplacement navigation, same as above
              onPressed: () => null,
              child: const Text("pushReplacement"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text("popUntil"),
            ),
            OutlinedButton(
              // TODO add pushAndRemoveUntil navigation, use above condition
              onPressed: () => null,
              child: const Text("pushAndRemoveUntil"),
            ),
          ],
        ),
      ),
    );
  }
}
