import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/home_screen.dart';
import 'package:plant_app/pages/intro_screens/intro_page_1.dart';
import 'package:plant_app/pages/intro_screens/intro_page_2.dart';
import 'package:plant_app/pages/intro_screens/intro_page_3.dart';
import 'package:plant_app/pages/login_screen.dart';
import 'package:plant_app/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetStartScreen extends StatefulWidget {
  GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  final PageController controller = PageController();

  int currentIndex = 0;

  // controller to keep track of where page we're on
  PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,

            //plage view
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ],
            ),
          ),

          const SizedBox(
            height: 60,
          ),

          //dot indicator
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: CustomizableEffect(
              activeDotDecoration: DotDecoration(
                width: 7,
                height: 7,
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(24),
              ), dotDecoration: DotDecoration(
              width: 7,
              height: 7,
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(24),
            )
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          onLastPage ?
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
                child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.mainColor),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Text('SIGN UP')),
                ),
              ],
            )),
          ) : Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20)),
                              backgroundColor:
                              MaterialStateProperty.all(AppColors.mainColor),
                              foregroundColor:
                              MaterialStateProperty.all(Colors.white)),
                          child: Text('NEXT')),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}



