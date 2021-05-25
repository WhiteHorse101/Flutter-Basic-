import 'package:flutter/material.dart';
import 'package:sample_prj/result.dart';
import './quizz.dart';
import 'result.dart';
// void main() {
//  runApp(App());    this is regular main method with curly braces
// }

void main() =>
    runApp(App()); // shorthand main method [understood by DART not flutter]

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return AppState();
  }
}

class AppState extends State<App> {
  final questions = const [
    {
      'question': 'Which is your favt Automobile brand ?',
      'answer': [
        'BMW',
        'Mercedeces',
        'Maserati',
        'Audi'
      ] // this a datatype in dart called "MAP" it takes input in form of  key and value pair just like dictionary in python
    },
    {
      'question': 'Which is your favt Bike Brand ?',
      'answer': ['KTM', 'Kawasaki', 'Royal Enfield', 'BMW']
    },
  ];

  var questionindex = 0;

  void answerQuestion() {
    if (questionindex < questions.length) {}

    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  @override // just an anotation
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter App ')),
        body: questionindex < questions.length
            ? Quizz(questions, answerQuestion, questionindex)
            : Result(),
      ),
    ); // Scaffold is responsible to load a base screen with bk clr its an widget in material.dart pkg
  }
}
