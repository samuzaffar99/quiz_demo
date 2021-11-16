import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Results"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // TODO Show score
            Text("Score: ???"),
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
              // TODO Navigate to new quiz
              onPressed: () => null,
              child: const Text("Retake Quiz"),
            ),
            ElevatedButton(
              // TODO Navigate back to Home
              onPressed: () => null,
              child: const Text("Goto Home"),
            )
          ],
        ),
      ),
    );
  }
}
