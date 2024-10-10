import 'package:flutter/material.dart';
import 'package:vedio_call/view/grades_screen/grades_screen.dart';
import 'package:vedio_call/view/home_screen/home_screen.dart';
import 'package:vedio_call/view/profile_screen/profile_screen.dart';
import 'package:vedio_call/view/schedule_screen/schedule_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    HomeScreen(),
    const GradesScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];
  List<IconData> iconList = [
    Icons.home,
    Icons.grade,
    Icons.schedule,
    Icons.person
  ];
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navIndex],
      //======================================bottom navigation bar here====================>
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: navIndex,
          onTap: (currentIndex) {
            setState(() {
              navIndex = currentIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grade_sharp,
                ),
                label: "Grades"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.schedule,
                ),
                label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile"),
          ]),
    );
  }
}
