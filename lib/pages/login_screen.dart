import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/get_start_screen.dart';
import 'package:plant_app/pages/home_screen.dart';
import 'package:plant_app/pages/main_page.dart';
import 'package:plant_app/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  var currentFocus;

  unfocus() {
    currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => GetStartScreen());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.signColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Hello',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Let’s Learn More About Plants',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //username
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: const TextStyle(
                  fontSize: 14,
                ),
                cursorColor: AppColors.mainColor,
                autofocus: true,
                onTap: unfocus,
                decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 17,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.mainColor))),
              ),
            ),

            //password
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              child: TextField(
                style: const TextStyle(
                  fontSize: 14,
                ),
                cursorColor: AppColors.mainColor,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 17,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.mainColor))),
              ),
            ),

            //attach login
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, right: 30),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    overlayColor: MaterialStateProperty.all(AppColors.mainColor),
                    checkColor: Colors.white,
                    activeColor: AppColors.mainColor,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 11, color: AppColors.textColor),
                  ),
                  const Spacer(),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            //footer
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 15, bottom: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: () {
                              Get.to(() => MainPage());
                            },
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(20)),
                              backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                              foregroundColor: MaterialStateProperty.all(Colors.white),

                            ),
                            child: Text('LOGIN', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t Have Account? ',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textColor,
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 12,
                        color: AppColors.mainColor,

                      ),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
