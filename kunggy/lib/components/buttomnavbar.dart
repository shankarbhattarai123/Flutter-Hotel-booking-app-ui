import 'package:flutter/material.dart';
import 'package:kunggy/constants/constants.dart';
import 'package:kunggy/screens/auth%20screens/loginScreen.dart';
import 'package:kunggy/screens/auth%20screens/registerscreen.dart';
import 'package:kunggy/screens/home_page.dart';
import 'package:kunggy/screens/inbox.dart';
import 'package:kunggy/screens/Profile/userprofilescreen.dart';

class Bottomnavigate extends StatefulWidget {
  @override
  _BottomnavigateState createState() => _BottomnavigateState();
}

class _BottomnavigateState extends State<Bottomnavigate> {
  int _selectedIndex = 0;
  List<Widget> meroWidget = <Widget>[
    HomePage(),
    LoginScreen(),
    RegisterScreen(),
    InboxScreen(),
    UsreProfileScreen()
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: kUnselectedColor,
          selectedItemColor: kPrimaryColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              label: "Wishlists",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.trip_origin_outlined,
                color: Colors.black,
              ),
              label: "Trips",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black,
              ),
              label: "Inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap),
    );
  }
}
