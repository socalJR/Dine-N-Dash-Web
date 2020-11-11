import 'package:flutter/material.dart';

class EmployeeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child:Center(
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Spacer(),
                  //Dine n' Dash Logo
                  SizedBox(
                    height: 350,
                    width: 350,
                    child: Image.asset('assets/pfpBig.png'),
                  ),
                  //SizedBox(height: 20),
                  Text(
                    'Employee Name',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),

                  SizedBox(height: 10),
                  Text(
                    'ID #',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Employee Title',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'Phone #',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    //color: Colors.white,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    onPressed: () {},
                    child: Text(
                      "Revenue Report".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ]
            ),
          ),
        );
  }
}