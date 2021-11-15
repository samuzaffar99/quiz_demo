import 'package:flutter/material.dart';
import 'package:quiz_demo/home.dart';
import 'package:quiz_demo/pages/quiz.dart';

import '../data.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _score = 0;
    quizData.asMap().forEach((i, quest) {
      if (quest["index"] == ans[i]) {
        _score++;
      }
    });
    // ans = List.filled(quizData.length, 0);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Results"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Score: $_score"),
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
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (Route<dynamic> route) => false,
              ),
              child: const Text("Goto Home"),
            )
          ],
        ),
      ),
    );
  }
}
