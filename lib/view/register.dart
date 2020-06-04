import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddelivery/view/main.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';




class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _text = TextEditingController();
  bool _validate=false;


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = "KH";
  PhoneNumber number = PhoneNumber(isoCode: 'KH');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                            Navigator.push(context, new MaterialPageRoute(builder: (context)=>BottomNavPage()
                            ));
                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              width: double.infinity,
              child: Text(
                "Login with your phone number ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                  ),
                ],
              ),
//              child: InternationalPhoneNumberInput.withCustomDecoration(
//
//                onInputChanged: (PhoneNumber number) {
//                  print(number.phoneNumber);
//              },
//                onInputValidated: (bool value) {
//                  print(value);
//                },
//
//
//                textFieldController: _text,
//                countries: ['KH','US'],
//                ignoreBlank: false,
//                autoValidate: false,
//                selectorTextStyle: TextStyle(color: Colors.black),
//                initialValue: number,
//                errorMessage: _validate ? 'Value Cant Be Empty' : null,
//
//
//              ),
                child: TextField(
                  controller: _text,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                      errorText: _validate ? 'Value Can not be empty':null,
                      hintText: "+855 Enter your phone number",
                      icon: SvgPicture.asset("assets/cambo.svg"),
                      hintStyle: TextStyle(fontSize: 13.0),
                      border: InputBorder.none),
                )
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
              height: 55,
              width: double.infinity,
              child: RaisedButton(
                color: Color(0xffE85A27),
                onPressed: () {
                  setState(() {
                    _text.text.isEmpty ? _validate = true : _validate = false;
                  });

                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10)),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
              width: double.infinity,
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "By continuing you agree to our",
                        style: (TextStyle(
                          color: Colors.black
                        ))
                      ),
                      TextSpan(
                          text: " Term of Service",
                          style: TextStyle(
                              color: Color(0xffE85A27),
                              fontWeight: FontWeight.bold
                          )
                      ),
                      TextSpan(text: " and",
                      style: (TextStyle(
                        color: Colors.black
                      ))),
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
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'KH');

    setState(() {
      this.number = number;

    });
  }



  @override
  void dispose() {
    controller?.dispose();
    _text.dispose();
    super.dispose();
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


