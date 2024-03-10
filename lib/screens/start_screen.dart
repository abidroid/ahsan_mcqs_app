
import 'package:ahsan_mcqs_app/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const QuizScreen();
            }));
          },
          child: const Text('Start Game'),
        ),
      ),
    );
  }
}
