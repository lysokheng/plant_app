import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/detail_screen/spinach_detail_plant_screen.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/leaf.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: const [
                    Icon(
                      Icons.flash_on,
                      color: Colors.white,
                    ),
                    Text(
                      'AUTO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.grid_3x3,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.join_left_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/leaf2.png'))),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const SpinachDetailScreen());
                          },
                          child: Container(
                            height: 63,
                            width: 63,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 3)),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'PHOTO',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 40,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
