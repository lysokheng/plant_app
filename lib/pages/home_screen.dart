import 'package:flutter/material.dart';
import 'package:plant_app/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              alignment: Alignment.bottomCenter,
              children: [

            //header text and avatar
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/header.png')),
                ),

                //Welcome text
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 30, right: 30),
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
                      Spacer(),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/taylor.png'),
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
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search For Plants',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: AppColors.signColor,
                    ),
                    contentPadding: EdgeInsets.only(top: 30),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
              ),
            )
          ]),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 130,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(
                      color: AppColors.mainColor,
                      spreadRadius: 5,
                      blurRadius: 2,
                      offset: Offset(100, 0),
                    )]
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
