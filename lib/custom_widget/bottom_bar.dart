import 'package:dazzyapp/pages/view/calendar_screen.dart';
import 'package:flutter/material.dart';

import '../pages/view/chat_screen.dart';
import '../pages/view/home_screen.dart';
import '../pages/view/note_screen.dart';
import '../pages/view/profile_screen.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": HomeScreen(), "title": "Screen A Title"},
    {"screen": CalenderScreen(), "title": "Screen A Title"},
    {"screen": NoteScreen(), "title": "Screen B Title"},
    {"screen": ChatScreen(), "title": "Screen B Title"},
    {"screen": ProfileScreen(), "title": "Screen B Title"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.pinkAccent,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, color: Colors.pinkAccent),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined, color: Colors.pinkAccent),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_outlined,
                  color: Colors.pinkAccent),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.pinkAccent), label: '')
        ],
      ),
    );
  }
}
