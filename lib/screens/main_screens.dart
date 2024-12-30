import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  // 1. 상태
  int selectedIndex = 0;

  // 2. 행위
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex, // 해당 인덱스 번호의 스크린이 화면에 뜬다
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          onClickBottomNavigation(value);
        },
        items: [ // IndexedStack 와 쌍으로 항상 같이 만들어야 함
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
      ]),
    );
  }
}