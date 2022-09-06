import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class DetailArticles extends StatelessWidget {
  const DetailArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.38,
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/post2_big.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 15, right: 15, top: 60),
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
                ),
              ),

              //love emoji
              Positioned(
                right: 30,
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.redAccent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 7,
                          spreadRadius: 5,
                          offset: const Offset(0, 0),
                        )
                      ]),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      decoration:
                          BoxDecoration(color: Colors.blue.withOpacity(0.2)),
                      child: const Center(
                        child: Text(
                          'VEGETABLES',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      decoration:
                          BoxDecoration(color: Colors.blue.withOpacity(0.2)),
                      child: const Center(
                        child: Text(
                          'GARDEN',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                //title
                Text(
                  'Even on Urban Excursions, Finding Mother Nature\'s Charms',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainBlackColor,
                    fontSize: 20,
                    height: 1.5
                  ),

                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/profile1_big.png',
                      ),
                      radius: 20,
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
                            fontSize: 14,
                            color: AppColors.mainBlackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '2019 . 01 . 01',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(90)),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            size: 12,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Follow',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nat ure should and can fit into that city getaway, acc ording to Kally Ellis, the founder of the London fl orist company McQueens and the in-house florist for the Maybourne Hotel Group. “Connecting with the natural world wherever you are is a great antid ote to jet lag and travel tiredness,” she said. “Plan ts and flowers can refresh us, boost our energy and help us recalibrate.”',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.8,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
