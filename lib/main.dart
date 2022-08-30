import 'package:flutter/material.dart';
import 'package:plant_app/pages/camera_screen.dart';
import 'package:plant_app/pages/detail_plant_screen.dart';
import 'package:plant_app/pages/home_screen.dart';
import 'package:plant_app/pages/login_screen.dart';
import 'package:plant_app/pages/main_page.dart';
import 'package:plant_app/pages/profile_screen.dart';
import 'package:plant_app/pages/second_screen.dart';
import 'package:plant_app/pages/get_start_screen.dart';
import 'package:plant_app/widgets/dismiss_keyboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second_screen': (context) => SecondScreen(''),
        '/profile_screen': (context) => ProfileScreen(),
        '/detail_plant_screen': (context) => DetailPlantScreen(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
