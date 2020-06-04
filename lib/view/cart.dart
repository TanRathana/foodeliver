import 'package:flutter/material.dart';
import 'package:fooddelivery/constant/constant.dart';
import 'package:fooddelivery/view/checkout.dart';
import 'package:badges/badges.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int quantity_item1 = 0;
  int quantity_item2 = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(Constant.mainColor),
                        Color(Constant.mainColor),
                      ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text('Cart Detail',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Add item or Remove',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  SizedBox(height: 20.0,),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 350.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 6.0,
                                )
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/food1.jpg') ,
                                  radius: 40,),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Chicken fried',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(Constant.textColor)
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text('11.9 USD',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Color(Constant.mainColor)
                                      ),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 35.0,),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 23.0,
                                    width: 23.0,
                                    child: RawMaterialButton(
                                      fillColor: Color(Constant.buttonColor),
                                      shape: CircleBorder(),
                                      elevation: 2.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          quantity_item1 += 1;
                                          total = quantity_item1+quantity_item2;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Text('$quantity_item1',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color(Constant.textColor),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    height: 23.0,
                                    width: 23.0,
                                    child: RawMaterialButton(
                                      fillColor: Color(Constant.buttonColor),
                                      shape: CircleBorder(),
                                      elevation: 2.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if(quantity_item1 != 0){
                                            quantity_item1 -= 1;
                                          }
                                          total = quantity_item1 + quantity_item2;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 15.0,)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          width: 350.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 6.0,
                                )
                              ]
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/pizza1.png") ,
                                  radius: 40,),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Pizza',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(Constant.textColor)
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text('11.9 USD',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Color(Constant.mainColor)
                                      ),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 35.0,),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 23.0,
                                    width: 23.0,
                                    child: RawMaterialButton(
                                      shape: CircleBorder(side: BorderSide(color: Color(0xffE85A27),width: 2)),
                                      elevation: 2.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          quantity_item2 += 1;
                                          total = quantity_item1 + quantity_item2;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Text('$quantity_item2',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color(Constant.textColor),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    height: 23.0,
                                    width: 23.0,
                                    child: RawMaterialButton(
                                      shape: CircleBorder(
                                          side: BorderSide(color: Color(0xffE85A27))
                                      ),
                                      elevation: 2.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if(quantity_item2 != 0){
                                            quantity_item2 -= 1;
                                          }
                                          total = quantity_item1+quantity_item2;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 15.0,)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 120.0,),
                        Badge(
                          position: BadgePosition.topLeft(top: -15 , left: 2),
                          animationType: BadgeAnimationType.scale,
                          badgeColor: Colors.white,
                          borderRadius: 20,
                          elevation: 3.0,
                          badgeContent: Text(
                            "$total",
                            style: TextStyle(
                              color: Color(Constant.mainColor),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          child: Container(
                            width: 320.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(Constant.mainColor),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 6.0,
                                  )
                                ]
                            ),
                            child: ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                     Navigator.push(context, new MaterialPageRoute(builder: (context)=>checkoutdetail()
                                     ));
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 10.0,),
                                      Text("Check out",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}