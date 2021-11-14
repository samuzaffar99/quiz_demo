import 'package:flutter/material.dart';
import 'package:quiz_demo/pages/quiz.dart';
import 'package:quiz_demo/widgets.dart';

import '../data.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Results"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemCount: quizData.length,
                separatorBuilder: (context, i) => const Divider(),
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text("Q.${i + 1} "),
                          Text(quizData[i]["question"]),
                          const Spacer(),
                          Text(quizData[i]["solutions"][quizData[i]["index"]]
                              .toString()),
                        ],
                      ),
                    ],
                  );
                }),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const QuizPage(0))),
              child: const Text("Retake Quiz"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WidgetsDemo())),
              child: const Text("Goto Home"),
            )
          ],
        ),
      ),
    );
  }
}
