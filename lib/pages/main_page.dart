import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/pages/detail_plant_screen.dart';
import 'package:plant_app/pages/profile_screen.dart';
import 'package:plant_app/utils/colors.dart';
import 'home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> lstWidgets = [
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: lstWidgets[selectedIndex],
      floatingActionButton: Stack(
        children: [
        const Positioned(
          child: FractionalTranslation(
            translation: Offset(0,0.24),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
            ),
          ),
        ),
          Positioned(
            top: 40,
            left: 42,
            child: FloatingActionButton(
              onPressed: () {

              },
              elevation: 0,
              child: const Icon(Icons.add),
            ),
          ),
      ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          elevation: 0,
          onTap: (index) {
            setState(() => selectedIndex = index);
            if (kDebugMode) {
              print('index : $index');
            }
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
          ]
      ),
    );
  }
}