import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
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
  var questionindex = 0;

  void answerQuestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  @override // just an anotation
  Widget build(BuildContext context) {
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter App ')),
          body: Column(
            children: [
              Question(
                questions[questionindex]['question'],
              ),
              ...(questions[questionindex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(answerQuestion, answer);
              }).toList()
            ],
          )),
    ); // Scaffold is responsible to load a base screen with bk clr its an widget in material.dart pkg
  }
}
