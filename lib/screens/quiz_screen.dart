import 'package:ahsan_mcqs_app/models/question.dart';
import 'package:ahsan_mcqs_app/utility/data_store.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  late String questionText, a, b, c, d, correctAns;
  List<Question> questionsList = DataStore().questions;

  @override
  void initState() {
    super.initState();
    questionsList.shuffle();
    displayQuestion();
  }

  displayQuestion() {

    if( currentQuestionIndex == questionsList.length - 1){
      Fluttertoast.showToast(
        msg: 'Game Over',
        fontSize: 30,
        backgroundColor: Colors.red,
      );
      // game over
      Navigator.of(context).pop();
    }


    Question question = questionsList[currentQuestionIndex];

    setState(() {
      questionText = question.text;
      a = question.a;
      b = question.b;
      c = question.c;
      d = question.d;
      correctAns = question.ans;
    });
  }

  check(String buttonText) {
    if (correctAns == buttonText) {
      // display toast
      Fluttertoast.showToast(
        msg: 'Correct',
        fontSize: 30,
        backgroundColor: Colors.green,
      );
      // go to next question
      currentQuestionIndex++;
      displayQuestion();



    } else {
      // display toast
      Fluttertoast.showToast(
        msg: 'Game Over',
        fontSize: 30,
        backgroundColor: Colors.red,
      );
      // game over
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('${currentQuestionIndex + 1} / 5'),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Card(
                child: Center(child: Text(questionText)),
              ),
            ),
            ElevatedButton(onPressed: () {
              check(a);
            }, child: Text(a)),
            ElevatedButton(onPressed: () {
              check(b);
            }, child: Text(b)),
            ElevatedButton(onPressed: () {
              check(c);
            }, child: Text(c)),
            ElevatedButton(onPressed: () {
              check(d);
            }, child: Text(d)),
          ],
        ),
      ),
    );
  }
}
