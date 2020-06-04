import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fooddelivery/constant/constant.dart';
import 'package:fooddelivery/view/cart.dart';
import 'package:getflutter/getflutter.dart';
import 'package:responsive_text_field/responsive_text_field.dart';
import 'package:badges/badges.dart';
import 'package:group_radio_button/group_radio_button.dart';

class checkoutdetail extends StatefulWidget {
  @override
  _checkoutdetailState createState() => _checkoutdetailState();
}

class _checkoutdetailState extends State<checkoutdetail> {

  int paymentSelected;

  @override
  void initState() {
    super.initState();
    paymentSelected = 0;
  }

  setPaymentSelected(int val){
    setState(() {
      paymentSelected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                        Color(0xffE85A27),
                        Color(Constant.mainColor)
                      ]),
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                          color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context)=>CartPage()
                            ));
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35.0,),
                        child: Text('Check Out Details',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: "Greycliff"
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 330.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: <Widget>[
                  Text('Your Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: "Greycliff"
                  ),
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Color(Constant.mainColor),
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0,),
                    Text('Phnom Penh, St 32',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Greycliff"
                    ),)
                  ],),
                  SizedBox(height: 15.0,),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                    Icon(
                      Icons.payment,
                      color: Color(Constant.mainColor),
                      size: 30.0,
                    ),
                    SizedBox(width: 10.0,),
                    Text('Payment Options',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Greycliff"
                    ),)
                  ],),
                  SizedBox(height: 30.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 350.0,
                        height: 80.0,
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
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: GFAvatar(
                                      backgroundImage:AssetImage("images/cash.png"),
                                      shape: GFAvatarShape.square,
                                      backgroundColor: Colors.white,
                                  ),
                                ),
                                Text('Cash on Delivery',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(Constant.textColor),
                                      fontFamily: "Greycliff"
                                  ),),
                              ],
                            ),
                            Radio(
                              value: 1,
                              groupValue: paymentSelected,
                              activeColor: Color(Constant.mainColor),
                              onChanged: (val) {
                                print('$val');
                                setPaymentSelected(val);
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12.0,),
                      Container(
                        width: 350.0,
                        height: 80.0,
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
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: GFAvatar(
                                    backgroundImage:AssetImage("images/aba.jpg"),
                                    shape: GFAvatarShape.square,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Text('ABA Pay',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(Constant.textColor),
                                      fontFamily: "Greycliff"
                                  ),),
                              ],
                            ),
                            Radio(
                              value: 2,
                              groupValue: paymentSelected,
                              activeColor: Color(Constant.mainColor),
                              onChanged: (val) {
                                print('$val');
                                setPaymentSelected(val);
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12.0,),
                      Container(
                        width: 350.0,
                        height: 80.0,
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
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: GFAvatar(
                                    backgroundImage:AssetImage("images/wing.png"),
                                    shape: GFAvatarShape.square,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Text('Wing Money',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(Constant.textColor),
                                      fontFamily: "Greycliff"
                                  ),),
                              ],
                            ),
                            Radio(
                              value: 3,
                              groupValue: paymentSelected,
                              activeColor: Color(Constant.mainColor),
                              onChanged: (val) {
                                print('$val');
                                setPaymentSelected(val);
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12.0,),
                      Container(
                        width: 350.0,
                        height: 80.0,
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
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: GFAvatar(
                                    backgroundImage:AssetImage("images/pipay.png"),
                                    shape: GFAvatarShape.square,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Text('Pipay',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(Constant.textColor),
                                      fontFamily: "Greycliff"
                                  ),),
                              ],
                            ),
                            Radio(
                              value: 4,
                              groupValue: paymentSelected,
                              activeColor: Color(Constant.mainColor),
                              onChanged: (val) {
                                print('$val');
                                setPaymentSelected(val);
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.event_note,
                            color: Color(Constant.mainColor),
                            size: 35.0,
                          ),
                          SizedBox(width: 10.0,),
                          Text("Special Notes",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Text('Note',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),),
                      SizedBox(height: 8.0),
                      ResponsiveTextField(
                        availableWidth: MediaQuery.of(context).size.width,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 50,horizontal: 5),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Colors.black38)
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1,color: Colors.black38)
                            )),
                        style: TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(height: 15.0,),
                      Text('Details',
                      style: TextStyle(
                        fontSize: 18.0
                      ),),
                      SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '12 USD',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(Constant.mainColor)
                              ),),
                              Text(' x 1',
                              style: TextStyle(
                                fontSize: 16.0
                              ),),
                            ],
                          ),
                          Text(
                            '12 USD',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color(Constant.mainColor)
                            ),)
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Delivery fee',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),),
                          Text(
                            '0.00 USD',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color(Constant.mainColor)
                            ),),
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Total Payment(incl.VAT)',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color(Constant.mainColor)
                            ),),
                          Text(
                            '0.00 USD',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color(Constant.mainColor)
                            ),),
                        ],
                      ),
                      SizedBox(height: 25.0,),
                      Center(
                        child: Badge(
                          position: BadgePosition.topLeft(top: -15 , left: -10),
                          animationType: BadgeAnimationType.scale,
                          badgeColor: Colors.white,
                          borderRadius: 20,
                          elevation: 3.0,
                          badgeContent: Text(
                            "13",
                            style: TextStyle(
                              color: Color(Constant.mainColor),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          child: Container(
                            height: 60.0,
                            width: 160.0,
                            color: Color(Constant.mainColor),
                            child: ButtonBar(
                              children: <Widget>[
                                FlatButton(
                                  onPressed: (){
                                    print('click');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                      Text("Place Order",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontFamily: 'greycliff'
                                        ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                    ],
                  ),
                ],
              ),
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
