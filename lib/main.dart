import 'package:flutter/material.dart';
import 'package:flutter_cheat/counter.dart';
import 'package:flutter_cheat/home.dart';
import 'package:flutter_cheat/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('title'),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      backgroundColor: Colors.amberAccent,
      bottomNavigationBar: BottomNav(),
    ),
  ));
}

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    Profile(),
    Counter()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          iconSize: 20,
          selectedFontSize: 15,
          unselectedFontSize: 13,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label:'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'counter'),
          ]),
    );
  }
}
