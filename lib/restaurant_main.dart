import 'package:dinendash_web/widgets/NavigationBar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RestaurantMenu extends StatelessWidget {
  const RestaurantMenu({Key key}) : super(key: key);


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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NavigationBar(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text('\t\tAppetizers',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 30,
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(0,0,700,0),
                    child: ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                            onPressed: () {},
                            child: Text(
                                'Add Item'
                            ),
                            textColor: Colors.white,
                            color: const Color(0xfffd1040),
                            padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Buffalo \nWings'),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Chicken \nTaquitos'),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Chili Cheese \nFries'),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Clam Chowder\n Fries'),
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Mozzerela \nSticks'),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Nachos'),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Text('Spinach \nDip'),
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    onPressed: (){},
                    color: const Color(0xfffd1040),
                    child: Icon(Icons.plus_one,
                      color: Colors.white,),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      //color: Colors.transparent,
                      child: new Text(
                        'Menu +',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontWeight: FontWeight.w300,
                          color: Colors.red,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: new Text(
                        'Appetizers',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: new Text(
                        'Entrees',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: new Text(
                        'Sides',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),

                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: new Text(
                        'Kids Meal',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: new Text(
                        'Desserts',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: new Text(
                        'Beverages',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){},
                      child: Text(
                        'Alcoholic Beverages',
                        style: TextStyle(
                          decoration:TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
