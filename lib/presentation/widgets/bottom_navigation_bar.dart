
import 'package:yeyito/pages/home_page.dart';
import 'package:yeyito/pages/profile_page.dart';
import 'package:flutter/material.dart';




class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int myCurrentIndex = 0;
  List page = [
    const HomePage(data: {},),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80.0,
        margin: const EdgeInsets.symmetric(horizontal: 10,),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 25,
              offset: const Offset(10, 25))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            
              // backgroundColor: Colors.transparent,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.blueGrey,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 40.0,), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline, size: 40.0,), label: ""),
              ]),
        ),
      ),
      body: page[myCurrentIndex],
    );
  }
}