import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/detail_screen/deatail_articles.dart';

import '../utils/colors.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //header
          Stack(alignment: Alignment.bottomCenter, children: [
            Positioned(
                child: SizedBox(
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
                      image: AssetImage('assets/images/article_header.png')),
                ),
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
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        'Articles',
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
                child: Material(
                  borderRadius: BorderRadius.circular(25),
                  elevation: 20.0,
                  shadowColor: Colors.black.withOpacity(0.2),
                  child: TextField(
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      prefixIconColor: AppColors.mainColor,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.searchHintColor,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search For Articles',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppColors.searchHintColor,
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
              ),
            )
          ]),

          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.84,
                height: MediaQuery.of(context).size.height * 0.31,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 13,
                      blurRadius: 50,
                    )
                  ],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.17,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              topLeft: Radius.circular(13)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/post1.png'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'David Austin, Who Breathed Life Into the Rose, Is Dead at 92',
                        style: TextStyle(
                          color: AppColors.bigTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          height: 1.3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/profile.png',
                            ),
                            radius: 16,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Shivani Vora',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.mainBlackColor,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '2019 . 01 . 01',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.black.withOpacity(0.2),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.heart_broken_outlined,
                            color: Colors.black.withOpacity(0.2),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const DetailArticles());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.84,
                  height: MediaQuery.of(context).size.height * 0.31,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 13,
                        blurRadius: 50,
                      )
                    ],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(13),
                                topLeft: Radius.circular(13)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/post2.png'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'Even on Urban Excursions, Finding Mother Nature\'s Charms',
                          style: TextStyle(
                            color: AppColors.bigTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            height: 1.3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/profile1.png',
                              ),
                              radius: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Shylla Monic',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.mainBlackColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '2019 . 01 . 01',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Icon(
                              Icons.bookmark_border,
                              color: Colors.black.withOpacity(0.2),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.heart_broken_outlined,
                              color: Colors.black.withOpacity(0.2),
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
        ],
      ),
    );
  }
}
