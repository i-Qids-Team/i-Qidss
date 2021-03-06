import 'package:flutter/material.dart';

import 'GamePage.dart';

class HomeShape extends StatefulWidget {
  @override
  _HomeShape createState() => _HomeShape();
}

class _HomeShape extends State<HomeShape> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lets play Shape!'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/shape_home.gif"),
            fit: BoxFit.fill,
          ),
        ),
        child: buildMainPage(context),
      ),
    );
  }

  Column buildMainPage(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/shape.gif',
          ),
          Text("\nI HAVE EDGE(S)\n",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
                color: Colors.black,
              )),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: RaisedButton(
              color: Colors.pink[300],
              textColor: Colors.white,
              padding: const EdgeInsets.all(15.0),
              child: Text("Play Now",
                  style: TextStyle(fontSize: 25, letterSpacing: 3)),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new GamePage()),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
        ],
      );
  }
}
