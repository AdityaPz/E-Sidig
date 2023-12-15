import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: const Color(0xFF0C356A),
      unselectedItemColor: const Color(0xFF0C356A),
      showUnselectedLabels: true,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home_max_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.edit_attributes_outlined),
          label: 'Modul',
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.mode_edit),
          label: 'Quiz',
        ),
      ],
    );
  }
}
