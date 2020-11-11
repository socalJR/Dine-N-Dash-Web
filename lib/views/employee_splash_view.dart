import 'package:dinendash_web/widgets/NavigationBar/navigation_bar.dart';
import 'package:dinendash_web/widgets/centered_view/centered_view.dart';
import 'package:dinendash_web/widgets/employee/employee_view_profile.dart';
import 'package:dinendash_web/widgets/employee/splash_screen.dart';
import 'package:flutter/material.dart';

class EmployeeSplashScreen extends StatelessWidget {
  const EmployeeSplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: CenteredView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SplashScreen()
                      ]
                  )
              )
          )
      ),
    );
  }
}