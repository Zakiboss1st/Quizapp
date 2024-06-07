// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quez_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//   List<String> Questions = [
//     "flutter was released in 2017",
//     "Maalinta fasaxa ah malmaha waa axad",
//     "Zaki boss is A developer Application"
//   ];
//   List<bool> answers = [
//     true,
//     false,
//     true,
//   ];
  List<Question> questions = [
    Question(
      q: "flutter was released in 2017",
      a: true,
    ),
    Question(
      q: "Maalinta fasaxa ah malmaha waa axad",
      a: false,
    ),
    Question(
      q: "Zaki boss is A developer Application",
      a: true,
    ),
  ];
  int questionindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff003049),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    questions[questionindex].QuestionName!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.green)),
                            onPressed: () {
                              final iscorrect =
                                  questions[questionindex].QuestionAnswer;
                              setState(() {
                                if (questionindex < questions.length - 1)
                                  questionindex++;
                                if (iscorrect == true) {
                                  print("waa saxday");
                                } else {
                                  print("waa khaladay");
                                }
                              });
                            },
                            child: Text(
                              "True",
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red)),
                            onPressed: () {
                              final isfalse =
                                  questions[questionindex].QuestionAnswer;
                              setState(() {
                                if (questionindex < questions.length - 1)
                                  questionindex++;
                                if (isfalse == false) {
                                  print("waa saxday");
                                } else {
                                  print("Waa khaladay");
                                }
                              });
                            },
                            child: Text(
                              "False",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
