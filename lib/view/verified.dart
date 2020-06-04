import 'package:flutter/material.dart';
import 'package:fooddelivery/view/home.dart';
import 'package:fooddelivery/view/main.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:fooddelivery/view/register.dart';


class VerifiedPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFFF8748),
                        Color(0xffE85A27),
                      ]),
                  image:
                  DecorationImage(image: AssetImage("assets/black-03.png")),
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: IconButton(
                          icon: Icon(Icons.fast_forward,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context)=>HomePage()
                            ));
                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            PinEntryTextField(
              fields: 6,
              onSubmit: (int pin) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pin"),
                        content: Text('Pin entered is $pin'),
                      );
                    }); //end showDialog()
              },
            ),
            Container(
              margin: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
              height: 55,
              width: double.infinity,
              child: RaisedButton(
                color: Color(0xffE85A27),
                onPressed: () {Navigator.push(context, new MaterialPageRoute(builder: (context)=>BottomNavPage()
                ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10)),
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
              width: double.infinity,
              child: Center(
                  child: Text(
                    "We'll now attempt to automatically verify the code for you This will timeout in 27 seconds.",
                    textAlign: TextAlign.center,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
              width: double.infinity,
              child: Center(
                  child: Text(
                    "I already have code",
                    textAlign: TextAlign.center,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top:190,left: 15,right: 15),
              width: double.infinity,
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "By continuing you agree to our",
                        style: TextStyle(color: Colors.black)

                      ),
                      TextSpan(
                          text: " Term of Service",
                          style: TextStyle(
                              color: Color(0xffE85A27), fontWeight: FontWeight.bold)),
                      TextSpan(text: " and",style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: " Privacy",
                          style: TextStyle(
                            color: Color(0xffE85A27),
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
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
