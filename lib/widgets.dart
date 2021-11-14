import 'package:flutter/material.dart';
import 'package:quiz_demo/pages/quiz.dart';

import 'routes.dart' as route;

class WidgetsDemo extends StatefulWidget {
  const WidgetsDemo({Key? key}) : super(key: key);
  final title = "Widgets Demo";
  @override
  State<WidgetsDemo> createState() => _WidgetsDemoState();
}

class _WidgetsDemoState extends State<WidgetsDemo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // https://flutter.dev/docs/cookbook/design/drawer
      drawer: _drawer,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const SecondPage(),
                ),
              ),
              child: const Text("Navigate to Second Page"),
            ),
            ElevatedButton(
              // onPressed: () => Navigator.pushNamed(context, route.registerPage),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizPage(0))),
              child: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DefaultTabController(
                length: myTabs.length,
                child: Column(
                  children: [
                    const TabBar(
                      tabs: myTabs,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: myTabs.map((Tab tab) {
                          final String label = tab.text!.toLowerCase();
                          return Center(
                            child: Text(
                              'This is the $label tab',
                              style: const TextStyle(fontSize: 36),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text("Second Page"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Press to go back"),
            )
          ],
        ),
      ),
    );
  }
}
