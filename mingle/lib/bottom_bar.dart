import 'package:flutter/material.dart';
import 'package:mingle/screens/second_page.dart';
import 'package:mingle/screens/main_page.dart';
import 'package:mingle/screens/third_page.dart';
import 'package:mingle/screens/fourth_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const MainPage(),
    const SecondPage(),
    const ThirdPage(),
    const FourthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.forest_outlined, color: Colors.black),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined, color: Colors.black),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined, color: Colors.black), label: ""),
        ],
      ),
    );
  }
}
