import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:plant_app/pages/get_start_screen.dart';
import 'package:plant_app/utils/colors.dart';
import 'package:plant_app/widgets/dismiss_keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: AppColors.backgroundColor,
      home: const GetStartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
