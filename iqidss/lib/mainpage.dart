import 'package:flutter/material.dart';
import 'package:iqidss/UserProfile.dart';

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(          
          title: Text('Welcome Corona!'),
          backgroundColor: Colors.red[300],
          ),
          drawer: _Drawer(),
          body: Container(
          padding: const EdgeInsets.all(10.0),
          height: double.infinity,
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Score: 0",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            Image.asset(
              'assets/main.gif',
              height: 190,
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue[300],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Body Part", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purple[200],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Animal", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.lightGreen[200],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Color", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.redAccent[100],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Sport", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  ListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.red.shade300)),
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  class _Drawer extends StatefulWidget {
  @override
  __DrawerState createState() => __DrawerState();
}

class __DrawerState extends State<_Drawer> {




    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Image(
                alignment: Alignment.center,
                fit: BoxFit.contain,
                image: AssetImage('assets/main.gif'),
              ),
            ),
            Card(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.red.shade600)),
                    ),
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      child: Container(
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Profile'),
                          onTap: () {
                            return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserProfile ()),
                            );
                          },
                        ),
                      ),
                    ))),
            Card(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.red.shade600)),
                    ),
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      child: Container(
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text('Notification'),
                          onTap: () {
                            return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notification()),
                            );
                          },
                        ),
                      ),
                    ))),
            Card(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.red.shade600)),
                    ),
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      child: Container(
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Setting'),
                          onTap: () {
                            _settingBottomSheet(context);
                          },
                        ),
                      ),
                    ))),
            Card(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.red.shade600)),
                    ),
                    child: InkWell(
                      splashColor: Colors.orangeAccent,
                      child: Container(
                        height: 60,
                        child: ListTile(
                          leading: Icon(Icons.exit_to_app),
                          title: Text('Logout'),
                          onTap: () {
                            return Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Logout()),
                            );
                          },
                        ),
                      ),
                    ))),
          ],
        ),
      );    
    }

    //function _settingBottomSheet
  void _settingBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              // margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
              color: Color(0xFF737373),
              child: Container(
                decoration: BoxDecoration(
                    // color: Theme.of(context).canvasColor,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30),
                      topRight: const Radius.circular(30),
                    )),
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          
                          Text("SETTING PAGE",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),

                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.orangeAccent,
                              size: 25,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ), //Row

                    ],
                  ),
                  
                ),
              ));
        });
  }

}

class Notification extends StatelessWidget {
  final items = List<String>.generate(5, (i) => "Message ${i + 1}");

  Function setState;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              Icon(Icons.delete);
              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  //Scaffold.of(context).showSnackBar(SnackBar(content: Text("Message deleted")));
                },
                background: Container(
                  child: Center(
                    child: Text(
                      'Deleted',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.red,
                ),
                child: Card(
                  color: const Color(0xFFFCE4EC),
                  child: ListTile(
                    leading: Icon(Icons.notifications_active),
                    title: Text('$item'),
                    subtitle: Text('Collect more score to beat others. '
                        '20/3/2020'),
                    isThreeLine: true,
                    // trailing: Icon(Icons.swap_horizontal_circle),
                  ),
                ),
              );
            }));
  } // itemBuilder
}

class Logout extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Logout Session'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
            color: Colors.red[100],
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Text("You have successfully logged out",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Image.asset(
                  'assets/main.gif',
                  alignment: Alignment.center,
                  height: 210,
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.yellow[600],
                    textColor: Colors.black,
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Login", style: TextStyle(fontSize: 25)),
                    onPressed: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notification()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
              ],
            )));
  }
}