
import 'package:flutter/material.dart';
import 'package:fooddelivery/view/home.dart';
import 'package:fooddelivery/view/search.dart';
import 'package:fooddelivery/view/cart.dart';
import 'package:fooddelivery/view/order.dart';
import 'package:fooddelivery/view/account.dart';
import '../constant/constant.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavPage(),
    );
  }
}


class BottomNavPage extends StatefulWidget {
  BottomNavPage({Key key}) : super(key: key);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomePage(),
      SearchPage(),
      CartPage(),
      OrderPage(),
      AccountPage()

    ];
    return Scaffold(

      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              title: Text('Cart')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Order')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account')
          )
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(Constant.mainColor),
        onTap: _onItemTapped,
      ),
    );
  }
}
