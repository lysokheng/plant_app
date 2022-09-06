import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/article_screen.dart';
import 'package:plant_app/pages/camera_screen.dart';
import 'package:plant_app/pages/profile_screen.dart';
import 'package:plant_app/pages/species_screen.dart';
import 'package:plant_app/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background
          Positioned(child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,

          )),
          //header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            // bottom: 0,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              //header text and avatar
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/header.png')),
                  ),

                  //Welcome text
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Hello Taylor,',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Let’s Learn More About Plants',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ProfileScreen());
                          },
                          child: const CircleAvatar(
                            radius: 23,
                            backgroundImage:
                                AssetImage('assets/images/taylor.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //search
              Positioned(
                child: Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      prefixIconColor: AppColors.mainColor,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.signColor,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search For Plants',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: AppColors.signColor,
                          fontWeight: FontWeight.w300),
                      contentPadding: const EdgeInsets.only(top: 30),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              )
            ]),
          ),

          //body
          Positioned(
            top: 230,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //category
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => CameraScreen());
                          },
                          child: Container(
                            height: 76,
                            width: 108,
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.mainColor.withOpacity(0.5),
                                      spreadRadius: 7,
                                      blurRadius: 10,
                                      offset: const Offset(3, 3))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'IDENTIFY',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => SpeciesScreen());
                          },
                          child: Container(
                            height: 76,
                            width: 108,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 7,
                                      blurRadius: 10,
                                      offset: const Offset(3, 3))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.energy_savings_leaf,
                                  color: AppColors.mainColor,
                                  size: 27,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'SPECIES',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ArticleScreen());
                          },
                          child: Container(
                            height: 76,
                            width: 108,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 7,
                                      blurRadius: 10,
                                      offset: const Offset(3, 3))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.book,
                                  color: AppColors.mainColor,
                                  size: 27,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'ARTICLES',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Plant Types
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 15, left: 30),
                        child: Text(
                          'Plant Types',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Container(
                            height: 160,
                            width: 299,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/plant1.png'),
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Spacer(),
                                  Text(
                                    'Home Plants',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '68 Types of Plants',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 160,
                            width: 299,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/plant1.png'),
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Spacer(),
                                  Text(
                                    'Huge Plants',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '102 Type Of Plants',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Photography
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 15, left: 30),
                        child: Text(
                          'Photography',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Container(
                            height: 144,
                            width: 126,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/plant2.png'),
                            )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '#Mini',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.mainBlackColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 144,
                            width: 126,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/plant3.png'),
                            )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                Container(
                                  width: 55,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '#Homely',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.mainBlackColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 144,
                            width: 126,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/plant2.png'),
                            )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '#Cute',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.mainBlackColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 144,
                            width: 126,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/plant3.png'),
                            )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                Container(
                                  width: 55,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '#Homely',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.mainBlackColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
