import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
