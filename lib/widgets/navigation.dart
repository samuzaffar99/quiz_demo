import 'package:flutter/material.dart';

class NavDemo extends StatelessWidget {
  const NavDemo({Key? key}) : super(key: key);

  MaterialPageRoute getRoute() {
    return MaterialPageRoute(builder: (context) => const NavDemo());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, getRoute()),
              child: const Text("pop"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, getRoute()),
              child: const Text("push"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(context, getRoute()),
              child: const Text("pushReplacement"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text("popUntil"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context, getRoute(), ModalRoute.withName('/')),
              child: const Text("pushAndRemoveUntil"),
            ),
          ],
        ),
      ),
    );
  }
}
