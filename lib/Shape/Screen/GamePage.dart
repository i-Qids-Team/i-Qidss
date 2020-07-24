import 'package:flutter/material.dart';
import 'package:iqidss/mainpage.dart';
import 'package:iqidss/shape/Model/MockData.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Shape_Score.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<GamePage> with TickerProviderStateMixin {
  MockData mockData = MockData();
  int score = 0;

  void _checkAnswer(choice) {
    if (mockData.getCorrectAnswer() == choice) {
      score++;
      print(score);

      if (mockData.lastQuestion() == true) {
        print('questionfinish');
        int scorepass = 0;
        Alert(context: context, title: 'Well Done!', buttons: [
          DialogButton(
              child: Text(' VIEW YOUR SCORE'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScoreBoard(scorepass)));
              })
        ]).show();
      } else
        mockData.nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Lets play Shape!'),
          backgroundColor: Colors.red[300],
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                })
          ]),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        height: double.infinity,
        color: Colors.red[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  mockData.getQuestion().toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Image.asset(mockData.getImage()),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: new RaisedButton(
                child: const Text('True', style: TextStyle(fontSize: 18)),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    _checkAnswer(true);
                  });
                  score++;
                },
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: new RaisedButton(
                child: const Text('False', style: TextStyle(fontSize: 18)),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    _checkAnswer(false);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
