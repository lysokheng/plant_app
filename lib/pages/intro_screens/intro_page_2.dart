import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
              const Spacer(),
              const Text(
                'Learn Many Plants Species',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Text(
                  'Let\'s learn about the many plant species that exist in this world',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
