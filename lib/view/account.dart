import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'This is account page.',
          style: TextStyle(
              fontFamily: 'Greycliff',
              fontSize: 30.0,
              fontWeight: FontWeight.bold
          ),
        ),
        ),
      );
  }
}
