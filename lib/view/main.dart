
import 'package:flutter/material.dart';
import 'package:fooddelivery/view/home.dart';
import 'package:fooddelivery/view/search.dart';
import 'package:fooddelivery/view/cart.dart';
import 'package:fooddelivery/view/order.dart';
import 'package:fooddelivery/view/account.dart';
import '../constant/constant.dart';
import 'package:badges/badges.dart';
import 'package:page_transition/page_transition.dart';



/// This Widget is the main application widget.

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
            title: Text('Account'),
            icon:Badge(
              shape: BadgeShape.circle,
              borderRadius: 100,
              child: Icon(Icons.person),
              badgeContent: Text('9',
              style: TextStyle(color: Colors.white),),


            ),

          )
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(Constant.mainColor),
        onTap: _onItemTapped,
      ),
    );
  }
}
