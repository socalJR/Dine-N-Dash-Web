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
                width: 40,
              ),
              _NavBarItem('REVENUE REPORT'),
              SizedBox(
                width: 40,
              ),
              _NavBarItem('PROFILE'),
              SizedBox(
                width: 40,
              ),
              //_NavBarProfile('FName LName'),
              Image.asset(
               "assets/pfp.png",
                height: 30,
                width: 30,
              ),
              SizedBox(width: 5),
              Text('First Last', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal)),
              //SizedBox( width: 5,),
              IconButton(
                icon: Icon(Icons.arrow_drop_down, color: Colors.white, size:25,),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarProfile extends StatelessWidget {
  final String name;
  final String title;
  const _NavBarProfile(
      this.name, {
        Key key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: ListTile(
        leading: Image.asset(
         "assets/pfp.png",
          height: 85,
          width: 85,
        ),
        title: Text(name, style: TextStyle(fontSize: 16)), //employee name
        subtitle: Text(title, style: TextStyle(fontSize: 12)), //employee title
        trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children:[
              IconButton(
                icon: Icon(Icons.arrow_drop_down, color: Colors.grey, size:25,),
                onPressed: () {},
              ),
            ]),
      ),
    );
  }
}


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