import 'package:dinendash_web/widgets/NavigationBar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RestaurantEmpty extends StatelessWidget {
  const RestaurantEmpty({Key key}) : super(key: key);


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
            children: <Widget>[
              NavigationBar(),
//              Container(
//                alignment: Alignment(-0.6,0),
//                child: new Text(
//                  'Appetizers',
//                  style: TextStyle(
//                    decoration:TextDecoration.underline,
//                    color: Colors.white,
//                    fontSize: 35,
//                  ),
//                ),
//              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment(0,0),
                    child: new Text(
                      'No Items',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: RaisedButton(
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
                    ),
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
