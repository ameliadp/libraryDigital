import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:librarydigital/app/modules/utils/colors.dart';
import 'package:librarydigital/app/routes/app_pages.dart';

class BottomNav extends StatelessWidget {
  BottomNav({this.initialindex});
  int? initialindex;

  RxInt currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomAppBar(
          color: Color(0xffffffffff),
          notchMargin: 2.0,
          shape: CircularNotchedRectangle(),
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    currentIndex.value = 0;
                    Get.toNamed(Routes.HOME);
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: colorblack,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    currentIndex.value = 1;
                    Get.toNamed(Routes.PROFILE);
                  },
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: colorblack,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
