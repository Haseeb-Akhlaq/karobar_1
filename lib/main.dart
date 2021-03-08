import 'package:flutter/material.dart';
import 'package:karobar/screens/account_screen.dart';
import 'package:karobar/screens/itemsList.dart';
import 'package:karobar/screens/order_list.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Order List'),
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
          Home(),
          OrdersList(),
          AccountScreen(),
        ],
      ),
    );
  }
}
