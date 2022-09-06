import 'package:flutter/material.dart';
import 'package:plant_app/utils/colors.dart';
import 'package:get/get.dart';

class SpinachDetailScreen extends StatelessWidget {
  const SpinachDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: Container(
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
                      image: AssetImage('assets/images/leaf.png'),
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
                          offset: Offset(0, 0),
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
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),

                      decoration:
                          BoxDecoration(color: Colors.blue.withOpacity(0.2)),
                      child: Center(
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
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),

                      decoration:
                          BoxDecoration(color: Colors.blue.withOpacity(0.2)),
                      child: Center(
                        child: Text(
                          'HEALTHY',
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Spinach',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainBlackColor,
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Text(
                      '  4.5',
                      style: TextStyle(
                          color: AppColors.mainBlackColor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Kingdom',
                      style: TextStyle(
                        color: AppColors.mainBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Family',
                      style: TextStyle(
                        color: AppColors.mainBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Plantae',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Amaranthaceae',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    color: AppColors.mainBlackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Spinach is thought to have originated in ancient Persia (modern Iran and neighboring countries). It is not known by whom, or when, spinach was introduced to India, but the plant was subsequ ently introduced to ancient China, where it was known as "Persian vegetable"',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.5,
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
