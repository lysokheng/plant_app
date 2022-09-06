import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/list_plants_screen/cactus_screen.dart';
import '../utils/colors.dart';

class SpeciesScreen extends StatelessWidget {
  const SpeciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //header
          Stack(alignment: Alignment.bottomCenter, children: [
            Positioned(child: Container(
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
                      image: AssetImage('assets/images/header_species.png')),
                ),

                //Welcome text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 15),
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
                      child: Text('Species', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
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
                    hintText: 'Search For Plants',
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

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //list item
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('C', style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      height: 2,
                    ),),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CactusScreen());
                      },
                      child: Text('CACTUS', style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 2,
                      ),),
                    ),
                    Text('CISTUS', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('CAESALPINIA', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('CINNAMOMUM', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('CIRSIUM', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('CISSUS', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    SizedBox(height: 10,),
                    Text('D', style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      height: 2,
                    ),),
                    Text('DIERAMA', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('DIGITALIS', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('DAHLIA', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('DAPHNE', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('ECHINACEA', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('ECHINOPS', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    SizedBox(height: 10,),
                    Text('E', style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      height: 2,
                    ),),
                    Text('ECHINACEA', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                    Text('ECHINOPS', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 2,
                    ),),
                  ],
                ),

                Spacer(),

                //alphabets
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('#', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('A', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('B', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('C', style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('D', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('E', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('F', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('G', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('H', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('I', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('J', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('K', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('L', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('#', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('M', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('N', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('O', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('P', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('Q', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('R', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('S', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('T', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('U', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('V', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('W', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),Text('X', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('Y', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                    Text('Z', style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                    ),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
