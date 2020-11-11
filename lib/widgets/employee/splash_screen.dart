import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 150),
              Text(
                'WELCOME TO',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              //Dine n' Dash Logo
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/whiteLogo.png'),
              ),
              SizedBox(height: 20),
              Text(
                'WHERE DINING MEETS DASHING.',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ]
        ),
      ),
    );
  }
}