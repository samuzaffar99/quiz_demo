import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/material/DefaultTabController-class.html
class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Demo"),
          bottom: const TabBar(tabs: myTabs),
        ),
        //TODO Replace Center with TabBarView
        body: Center(),
      ),
    );
  }
}

// TabBarView(
// children: myTabs.map((Tab tab) {
// final String label = tab.text!.toLowerCase();
// return Center(
// child: Text(
// 'This is the $label tab',
// style: const TextStyle(fontSize: 36),
// ),
// );
// }).toList(),
// ),
