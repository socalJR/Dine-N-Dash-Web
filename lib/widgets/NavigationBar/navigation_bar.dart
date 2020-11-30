import 'package:dinendash_web/restaurant_menu.dart';
import 'package:dinendash_web/restuarant_empty.dart';
import 'package:dinendash_web/revenue_report.dart';
import 'package:dinendash_web/views/restaurant_home_view.dart';
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
              FlatButton(
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => RestaurantMenu()));},

              child: _NavBarItem('RESTAURANT'),
              ),
              SizedBox(
                width: 40,
              ),
              FlatButton(
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => RevenueReport()));},
              child: _NavBarItem('REVENUE REPORT'),
              ),
              SizedBox(
                width: 40,
              ),
              FlatButton(
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => RestaurantHomeView()));},
              child: _NavBarItem('PROFILE'),
              ),
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
              //Text('First Last', style: TextStyle(fontSize: 16, color: Colors.white,)),
              //SizedBox( width: 5,),
//              IconButton(
//                icon: Icon(Icons.arrow_drop_down, color: Colors.white, size:25,),
//                onPressed: () {
//                  print('Button Pressed');
//                },
//              ),
//              new DropdownButton<String>(
//                items: <String>['A', 'B', 'C', 'D'].map((String value) {
//                  return new DropdownMenuItem<String>(
//                    value: value,
//                    child: new Text(value),
//                  );
//                }).toList(),
//                onChanged: (_) {},
//              )

              new DropdownButton<String>(
                icon: Icon(Icons.arrow_drop_down, color: Colors.white, size: 25),
                style: TextStyle(color: Color(0xFFFF0041)),
                items: <String>['View Profile', 'Logout',]
                    .map<DropdownMenuItem<String>>((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                  onChanged: (_) {},
                hint: Text(
                  "First Last",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
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

//class DropDown extends StatefulWidget {
//  DropDown() : super();
//
//  //final String title = "DropDown Demo";
//
//  @override
//  DropDownState createState() => DropDownState();
//}
//
//class NavOptions {
//  int id;
//  String name;
//
//  NavOptions(this.id, this.name);
//
//  static List<NavOptions> getNavOptions() {
//    return <NavOptions>[
//      NavOptions(1, 'View Profile'),
//      NavOptions(2, 'Logout'),
//    ];
//  }
//}
//
//class DropDownState extends State<DropDown> {
//  //
//  List<NavOptions> _navOptions = NavOptions.getNavOptions();
//  List<DropdownMenuItem<NavOptions>> _dropdownMenuItems;
//  NavOptions _selectedNavOptions;
//
//  @override
//  void initState() {
//    _dropdownMenuItems = buildDropdownMenuItems(_navOptions);
//    _selectedNavOptions = _dropdownMenuItems[0].value;
//    super.initState();
//  }
//
//  List<DropdownMenuItem<NavOptions>> buildDropdownMenuItems(List navOptions) {
//    List<DropdownMenuItem<NavOptions>> items = List();
//    for (NavOptions navOptions in navOptions) {
//      items.add(
//        DropdownMenuItem(
//          value: navOptions,
//          child: Text(navOptions.name),
//        ),
//      );
//    }
//    return items;
//  }
//
//  onChangeDropdownItem(NavOptions selectedNavOptions) {
//    setState(() {
//      _selectedNavOptions = selectedNavOptions;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    throw UnimplementedError();
//  }
//}