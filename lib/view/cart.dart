import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text('This is cart page.',
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

