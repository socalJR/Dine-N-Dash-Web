import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 150,
            child: Image.asset('assets/whiteLogo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('RESTAURANT'),
              SizedBox(
                width: 50,
              ),
              _NavBarItem('REVENUE REPORT'),
              SizedBox(
                width: 50,
              ),
              _NavBarItem('PROFILE'),
              SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}

//class _NavBarProfile extends StatelessWidget {
//  final String name;
//  final String title;
//  const _NavBarProfile(
//      this.name, {
//        Key key, this.title,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Text(
//      title,
//      style: TextStyle(
//          color: Colors.white,
//          fontSize: 16
//      ),
//    );
//  }
//}
class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
      this.title, {
        Key key,
      }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.white,
          fontSize: 18
      ),
    );
  }
}