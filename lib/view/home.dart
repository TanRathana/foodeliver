import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

ThemeData appTheme = ThemeData(primaryColor: Color(0xFFF3791A));

const TextStyle textTitle = TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold);
const TextStyle textLocation = TextStyle(color: Colors.white, fontSize: 14.0);
const TextStyle category = TextStyle(color: Colors.black, fontSize: 18.0);
const TextStyle trendingTitle =
TextStyle(color: Color(0xffE85A27), fontSize: 17.0);
const TextStyle BestDeal = TextStyle(color: Color(0xffE85A27), fontSize: 18.0);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFF8748),
                      Color(0xffE85A27),
                    ]),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Delivery To',
                              style: textTitle,
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 36.0,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Phnom Penh , St 32',
                              style: textLocation,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.border_color,
                                size: 15.0,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    'Discovery Category',
                    style: category,
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    //margin: EdgeInsets.only(left: 0),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Khmer",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Pizza",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Drink",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Breakfast",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Coffee",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Burger",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Drink",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Drink",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Drink",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: ButtonTheme(
                      minWidth: 0,
                      padding: EdgeInsets.zero,
                      child: FlatButton(
                        //color: Colors.black12,
                        disabledColor: Colors.grey,
                        /*shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),*/
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.zero,
                        splashColor: Colors.grey,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Drink",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 5, top: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    'Trending',
                    style: trendingTitle,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/food1.jpg"),
                                  fit: BoxFit.fitWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/food4.jpg"),
                                  fit: BoxFit.fitWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/food6.jpg"),
                                  fit: BoxFit.fitWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/food12.jpg"),
                                  fit: BoxFit.fitWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/food1.jpg"),
                                  fit: BoxFit.fitWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/food1.jpg"),
                                  fit: BoxFit.fitWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Today's best deals",
                    style: BestDeal,
                  )
                ],
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 16),
              height: 130,
              child: ListView(
                  padding: EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: 200,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Image.asset(
                                        'images/food2.jpg',
                                        height: 250,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: ClipRRect(
                                    //borderRadius: BorderRadius.circular(24.0),
                                    child: Image.asset(
                                      'images/logo1.png',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: new BorderRadius.only(
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                              Radius.circular(24.0)),
                                          color: Colors.black.withAlpha(80),
                                        ),
                                        height: 40,
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10,top: 3),
                                              child: Row(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "KOI Thé",
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "Preparation time 30 min",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: 200,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Image.asset(
                                        'images/food9.jpg',
                                        height: 250,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: ClipRRect(
                                    //borderRadius: BorderRadius.circular(24.0),
                                    child: Image.asset(
                                      'images/logo2.png',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: new BorderRadius.only(
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                              Radius.circular(24.0)),
                                          color: Colors.black.withAlpha(80),
                                        ),
                                        height: 40,
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10,top: 3),
                                              child: Row(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "The Pizza Company",
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "Preparation time 30 min",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    "Stores",
                    style: BestDeal,
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              padding: EdgeInsets.all(10),
              child: Column(
                //scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    child: InkWell(
                        onTap: () {},
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              decoration: ShapeDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/food3.jpg"),
                                      fit: BoxFit.fitWidth),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(20))),
                              width: double.maxFinite,
                              height: 150,
                              //white box

                              child: Align(
                                alignment: FractionalOffset.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10, top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                  ),
                                  height: 90,
                                  width: 230,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "KOI Thé",
                                                  style: TextStyle(
                                                    color: Color(0xffE85A27),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Type: Beverage",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Container(
                                          margin:
                                          EdgeInsets.only(top: 10, right: 40),
                                          height: 1.0,
                                          width: 200.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellowAccent,
                                                  size: 20.0,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 3),
                                                  child: Text(
                                                    "4.9",
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    size: 17.0,
                                                  ),
                                                  Container(
                                                    //margin: EdgeInsets.only(left: 5),
                                                    child: Text(
                                                        "10-17 min"
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.motorcycle,
                                                    size: 17.0,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 5),
                                                    child: Text(
                                                      "Free delivery",
                                                      style: TextStyle(
                                                          fontSize: 12.0
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 172,
                                child: Align(
                                  alignment: FractionalOffset.bottomRight,
                                  child: Stack(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: AssetImage('images/logo1.png'),
                                      ),
                                      Positioned(
                                        top: 30.0,
                                        left: 31.0,
                                        child: Icon(
                                          Icons.brightness_1,
                                          color: Colors.lightGreen,
                                          size: 9.0,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  Container(
                    child: InkWell(
                        onTap: () {},
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              decoration: ShapeDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/food15.jpg"),
                                      fit: BoxFit.fitWidth),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(20))),
                              width: double.maxFinite,
                              height: 150,
                              //white box

                              child: Align(
                                alignment: FractionalOffset.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10, top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                  ),
                                  height: 90,
                                  width: 230,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "The Pizza Company",
                                                  style: TextStyle(
                                                    color: Color(0xffE85A27),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Type: Beverage",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Container(
                                          margin:
                                          EdgeInsets.only(top: 10, right: 40),
                                          height: 1.0,
                                          width: 200.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellowAccent,
                                                  size: 20.0,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 3),
                                                  child: Text(
                                                    "4.9",
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    size: 17.0,
                                                  ),
                                                  Container(
                                                    //margin: EdgeInsets.only(left: 5),
                                                    child: Text(
                                                        "10-17 min"
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.motorcycle,
                                                    size: 17.0,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 5),
                                                    child: Text(
                                                      "Free delivery",
                                                      style: TextStyle(
                                                          fontSize: 12.0
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 172,
                                child: Align(
                                  alignment: FractionalOffset.bottomRight,
                                  child: Stack(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: AssetImage('images/logo2.png'),
                                      ),
                                      Positioned(
                                        top: 30.0,
                                        left: 31.0,
                                        child: Icon(
                                          Icons.brightness_1,
                                          color: Colors.lightGreen,
                                          size: 9.0,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  Container(
                    child: InkWell(
                        onTap: () {},
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              decoration: ShapeDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/food5.jpg"),
                                      fit: BoxFit.fitWidth),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(20))),
                              width: double.maxFinite,
                              height: 150,
                              //white box

                              child: Align(
                                alignment: FractionalOffset.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10, top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                  ),
                                  height: 90,
                                  width: 230,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Bon Chon",
                                                  style: TextStyle(
                                                    color: Color(0xffE85A27),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Type: Fast Food",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                        child: Container(
                                          margin:
                                          EdgeInsets.only(top: 10, right: 40),
                                          height: 1.0,
                                          width: 200.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellowAccent,
                                                  size: 20.0,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 3),
                                                  child: Text(
                                                    "4.9",
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    size: 17.0,
                                                  ),
                                                  Container(
                                                    //margin: EdgeInsets.only(left: 5),
                                                    child: Text(
                                                        "10-17 min"
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.motorcycle,
                                                    size: 17.0,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 5),
                                                    child: Text(
                                                      "Free delivery",
                                                      style: TextStyle(
                                                          fontSize: 12.0
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 172,
                                child: Align(
                                  alignment: FractionalOffset.bottomRight,
                                  child: Stack(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: AssetImage('images/logo4.png'),
                                      ),
                                      Positioned(
                                        top: 30.0,
                                        left: 31.0,
                                        child: Icon(
                                          Icons.brightness_1,
                                          color: Colors.lightGreen,
                                          size: 9.0,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffE85A27),
                        Color(0xFFFF8748),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Show All Stores',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
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

/*
Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 300.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Trending',
                      style: trendingTitle,
                    )
                  ],
                ),
              ),
              Trending(),
            ],
          ),
* */
/*children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                /*Padding(
                  child: Text(
                    'Category',
                    style: category,
                  ),
                ),*/

                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        child: Text('All'),
                      ),
                      Container(
                        child: Text('Khmer'),
                      ),
                      Container(
                        child: Text('All'),
                      ),
                      Container(
                        child: Text('All'),
                      ),
                      Container(
                        child: Text('Breakfast'),
                      ),
                      Container(
                        child: Text('Louch'),
                      ),
                      Container(
                        child: Text('Dinner'),
                      ),
                      Container(
                        child: Text('Pizza'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),*/

/*Container(
                            width: 200,
                            decoration: ShapeDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/food2.jpg"),
                                    fit: BoxFit.fitWidth),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadiusDirectional.circular(24),
                                    ),
                                //width: MediaQuery.of(context).size.width,

                            ),
                            child: Center(
                                child: Text('5',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white, fontSize: 40)))
                          )*/
