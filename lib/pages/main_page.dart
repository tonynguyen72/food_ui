import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey.shade300,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Venues"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text("Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favourites"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
