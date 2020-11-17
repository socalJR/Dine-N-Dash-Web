import 'package:flutter/material.dart';

class sign_in_screen extends StatefulWidget {
  sign_in_screen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _sign_in_screen createState() => _sign_in_screen();
}

class _sign_in_screen extends State<sign_in_screen> {
  String email;
  String password;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // floatingActionButton: _floatingActionButtonTester(),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFFFF0041), Color(0xFFFB8E40)]),
          ),

          child:Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  //Spacer(),

                  //Dine n' Dash Logo
                  Padding(
                    padding: EdgeInsets.all(50),
                    child: Image.asset(
                      'whiteLogo.png',
                      height: 300,
                    ),
                  ),
                  //SizedBox(height: 20),
                  Text(
                    'EMAIL/USERNAME',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Container(
                    width: 400,
                    padding: EdgeInsets.all(50),
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        obscureText: false,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                        onChanged: (value) {
                          email = value;
                        }),
                  ),
                  //SizedBox(height: 20),
                  Text(
                    'PASSWORD',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Container(
                    width: 400,
                    padding: EdgeInsets.fromLTRB(50,50,50,90),
                    child: TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                        ),
                        onChanged: (value) {
                          password = value;
                        }),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}