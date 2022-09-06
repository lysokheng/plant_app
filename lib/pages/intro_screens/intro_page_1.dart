import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
