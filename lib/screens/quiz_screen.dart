import 'package:ahsan_mcqs_app/models/question.dart';
import 'package:ahsan_mcqs_app/utility/data_store.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  int currentQuestionIndex = 0;

  late String questionText, a, b, c, d, correctAns;

  @override
  void initState() {
    super.initState();
    displayQuestion();
  }

  displayQuestion(){
    Question question = DataStore().questions[currentQuestionIndex];

    setState(() {
      questionText = question.text;
      a = question.a;
      b = question.b;
      c = question.c;
      d = question.d;
      correctAns = question.ans;
    });
  }

  check( String buttonText ){
    if( correctAns == buttonText){

      // display toast

      // go to next question
    }else{

      // display toast

      // game over
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
            Text('${currentQuestionIndex +1} / 5'),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Card(
                child: Center(child: Text(questionText)),
              ),
            ),

            ElevatedButton(onPressed: (){}, child: Text(a)),
            ElevatedButton(onPressed: (){}, child: Text(b)),
            ElevatedButton(onPressed: (){}, child: Text(c)),
            ElevatedButton(onPressed: (){}, child: Text(d)),

          ],
        ),
      ),
    );
  }
}
