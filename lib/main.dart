import 'package:flutter/material.dart';
import 'package:karobar/screens/Retailer/order_List.dart';
import 'package:karobar/screens/WholeSeller/item_add_screen.dart';
import 'package:karobar/screens/orders_accepted.dart';

import 'file:///C:/Users/haseeb/AndroidStudioProjects/karobar/lib/screens/WholeSeller/account_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: WholeSellerHomePage(),
    );
  }
}

class WholeSellerHomePage extends StatefulWidget {
  @override
  _WholeSellerHomePageState createState() => _WholeSellerHomePageState();
}

class _WholeSellerHomePageState extends State<WholeSellerHomePage> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            _pageController.animateToPage(selectedIndex,
                duration: Duration(microseconds: 600), curve: Curves.linear);
          });
        },
        backgroundColor: Colors.grey[400],
        selectedItemColor: Colors.black,
        selectedFontSize: 9,
        unselectedFontSize: 6,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Item Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Order Accepted'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Order Pending'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity_outlined,
              ),
              label: 'Account'),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: [
          ItemAddScreen(),
          OrdersList(),
          OrdersAccepted(),
          AccountScreen(),
        ],
      ),
    );
  }
}
