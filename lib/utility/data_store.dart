import 'package:ahsan_mcqs_app/models/question.dart';

class DataStore {
  List<Question> questions = [
    Question(
      text: 'Sun rises in the ?',
      a: 'West',
      b: 'East',
      c: 'North',
      d: 'South',
      ans: 'East',
    ),
    Question(
      text: 'How many days in a week',
      a: '5',
      b: '6',
      c: '7',
      d: '8',
      ans: '7',
    ),
    Question(
      text: 'Capital of Afghanistan is',
      a: 'Jalalabad',
      b: 'Kandahar',
      c: 'Laghman',
      d: 'Kabul',
      ans: 'Kabul',
    ),
    Question(
      text: "How many state are there in USA ?",
      a: '50',
      b: '49',
      c: '55',
      d: '45',
      ans: '50',
    ),
    Question(
      text: 'Shahid Afridi plays ?',
      a: 'Football',
      b: 'Hockey',
      c: 'Cricket',
      d: 'Wrestling',
      ans: 'Cricket',
    ),
  ];
}
