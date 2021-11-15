import 'package:flutter/material.dart';

import 'pages/quiz.dart';
import 'widgets/drawer.dart';
import 'widgets/navigation.dart';
import 'widgets/stack.dart';
import 'widgets/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 4")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DrawerDemo())),
              child: const Text("Drawer Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StackDemo())),
              child: const Text("Stack Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabBarDemo())),
              child: const Text("TabBar Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavDemo())),
              child: const Text("Navigation Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizPage(0))),
              child: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
