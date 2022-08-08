import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/utils/colors.dart';

import '../widgets/button.dart';

class GetStartScreen extends StatefulWidget {
  GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  final PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView(
              onPageChanged: (index) {
                setState(() => currentIndex = index);
                if (kDebugMode) {
                  print('index $index');
                }
              },
              controller: controller,
              children: [

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/1.png')),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text('Identify Plants', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30),
                          child: Text('You can identify the plants you don\'t know through your camera', textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.textColor,
                          ),),
                        ),
                      ],
                    )
                  ),
                ),

                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/2.png')),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text('Learn Many Plants Species', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30),
                            child: Text('Let\'s learn about the many plant species that exist in this world', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.textColor,
                              ),),
                          ),
                        ],
                      )
                  ),
                ),

                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/3.png')),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text('Read Many Articles About Plant', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30),
                            child: Text('Let\'s learn more about beautiful plants and read many articles about plants and gardening', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.textColor,
                              ),),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 60,
          ),

          //indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? AppColors.mainColor
                        : AppColors.indicator,
                  ),
                ),
              );
            }),
          ),

          const SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Button(text: 'NEXT',)
            ),
          ),
        ],
      ),
    );
  }
}



