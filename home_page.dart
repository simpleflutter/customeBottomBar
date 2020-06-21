import 'package:flutter/material.dart';
import 'package:test_app/home.dart';
import 'package:test_app/profile.dart';
import 'package:test_app/setting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = [Home(), Profile(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: myItem(Icons.home, 'Home', 0),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: myItem(Icons.person, 'Profle', 1),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: myItem(Icons.settings, 'Settings', 2),
            title: Text(''),
          )
        ],
      ),
    );
  }

  Widget myItem(IconData icon, String title, int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      decoration: BoxDecoration(
        color: index == selectedIndex ? Colors.red : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
          index == selectedIndex
              ? Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}
