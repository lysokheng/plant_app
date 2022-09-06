import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/detail_screen/cirlcle_cactus_detail_screen.dart';

import '../../utils/colors.dart';

class CactusScreen extends StatelessWidget {
  const CactusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //header
          Stack(alignment: Alignment.bottomCenter, children: [
            Positioned(
                child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.28,
            )),
            //header
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.27,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/cactus_header.png')),
                ),

                //Welcome text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 60, bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        'Cactus',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
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
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search For Cactus',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: AppColors.signColor,
                    ),
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

          Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.22,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 7,
                        ),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/red_cactus.png')),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Red Cactus',
                          style: TextStyle(
                            color: AppColors.mainBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            height: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'KINGDOM',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'FAMILY',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Plantea',
                              style: TextStyle(
                                color: AppColors.mainBlackColor,
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              'Cactaceae',
                              style: TextStyle(
                                color: AppColors.mainBlackColor,
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'DESCRIPTION',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 12,
                            height: 2,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          child: Text(
                            'Cactus spines are produced from specialized structures...',
                            style: TextStyle(
                              color: AppColors.mainBlackColor,
                              fontSize: 12,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.22,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 7,
                        ),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/fat_cactus.png')),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Fat Cactus',
                          style: TextStyle(
                            color: AppColors.mainBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            height: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'KINGDOM',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'FAMILY',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Plantea',
                              style: TextStyle(
                                color: AppColors.mainBlackColor,
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              'Cactaceae',
                              style: TextStyle(
                                color: AppColors.mainBlackColor,
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'DESCRIPTION',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 12,
                            height: 2,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          child: Text(
                            'Cactus spines are produced from specialized structures...',
                            style: TextStyle(
                              color: AppColors.mainBlackColor,
                              fontSize: 12,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(() => CircleCactusDetailScreen());
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.22,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 7,
                          ),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/circle_cactus.png')),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Circle Cactus',
                            style: TextStyle(
                              color: AppColors.mainBlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              height: 1,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'KINGDOM',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 12,
                                  height: 2,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'FAMILY',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 12,
                                  height: 2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Plantea',
                                style: TextStyle(
                                  color: AppColors.mainBlackColor,
                                  fontSize: 12,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                'Cactaceae',
                                style: TextStyle(
                                  color: AppColors.mainBlackColor,
                                  fontSize: 12,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'DESCRIPTION',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 12,
                              height: 2,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Text(
                              'Cactus spines are produced from specialized structures...',
                              style: TextStyle(
                                color: AppColors.mainBlackColor,
                                fontSize: 12,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
          ),
        ],
      ),
    );
  }
}
