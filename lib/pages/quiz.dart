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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            // TODO Display Question
            Text(
              "THE QUESTION",
              textScaleFactor: 2,
            ),
            // TODO Replace Center with appropriate widget
            Center(child: Solutions(index: index)),
            (index + 1 < quizData.length)
                ? ElevatedButton(
                    // TODO Navigate to next question
                    onPressed: () => null,
                    child: const Text("Continue"),
                  )
                : ElevatedButton(
                    // TODO Show results page
                    onPressed: () => null,
                    child: const Text("Submit"),
                  )
          ],
        ),
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quizData[widget.index]["solutions"].length,
      itemBuilder: (context, i) {
        return RadioListTile(
          title: Text(quizData[widget.index]["solutions"][i].toString()),
          value: i,
          groupValue: ans[widget.index],
          onChanged: (_) {
            print(i);
            setState(() {
              ans[widget.index] = i;
            });
          },
        );
      },
    );
  }
}
