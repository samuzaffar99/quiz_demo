import 'package:flutter/material.dart';
import 'package:quiz_demo/pages/result.dart';

import '../data.dart';

class QuizPage extends StatelessWidget {
  const QuizPage(this.index, {Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question # ${index + 1}"),
      ),
      body: Column(
        children: [
          Text(quizData[index]["question"]),
          Expanded(child: Solutions(index: index)),
          (index + 1 < quizData.length)
              ? ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage(index + 1))),
                  child: const Text("Continue"),
                )
              : ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResultPage())),
                  child: const Text("Submit"),
                )
        ],
      ),
    );
  }
}

class Solutions extends StatefulWidget {
  const Solutions({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Solutions> createState() => _SolutionsState();
}

class _SolutionsState extends State<Solutions> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quizData[widget.index]["solutions"].length,
      itemBuilder: (context, i) {
        return Row(
          children: [
            Text(quizData[widget.index]["solutions"][i].toString()),
            Flexible(
              child: RadioListTile(
                value: i,
                groupValue: selectedIndex,
                onChanged: (_) {
                  print(i);
                  setState(() {
                    selectedIndex = i;
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
