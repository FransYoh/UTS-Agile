import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen%20Call%20to%20Dump/screen_ctd.dart';
import 'package:flutter_application_2/Screen%20Customer%20LIst/screen_cl.dart';
import 'package:flutter_application_2/Screen%20Home/homescreen.dart';
import 'package:flutter_application_2/Screen%20Payment/payment.dart';
import 'package:flutter_application_2/Screen%20Schedule/main.dart';
import 'package:flutter_application_2/Screen%20Trash%20for%20Cash/screen_tfc.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  int currentIndex = 2;
  final List<Widget> screens = [
    ScreenCtd(),
    //ScreenCtd(),
    //ScreenCtd(),
    MyHomePage(),
    HomeScreen(),
    PaymentPage(),
    ScreenTfc()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.amber,
        //selectedItemColor: Colors.black,
        //unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar1.png'),
              label: "Home",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar2.png'),
              label: "Number",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar3.png'),
              label: "ABC",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar4.png'),
              label: "Raw",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar5.png'),
              label: "Raw",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
