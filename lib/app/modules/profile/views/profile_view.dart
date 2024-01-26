import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:librarydigital/app/modules/utils/bottomnav.dart';
import 'package:librarydigital/app/modules/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: colorblack,
          iconSize: 15,
        ),
        title: Image.asset(
          'assets/images/logoPerpus.png',
          fit: BoxFit.contain,
          width: 150.0,
          height: 120.0,
        ),
        centerTitle: true,
        elevation: 4,
        shadowColor: colorblack,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: Container(
              height: 170.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorwhite,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: colorblack, width: 1.0),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(color: colorgrey, fontSize: 10.0),
                          ),
                          2.height,
                          const Text(
                            'arshyacantika23@gmail.com',
                            style: TextStyle(
                                color: colorblack,
                                fontSize: 15.0,
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nama Lengkap',
                            style: TextStyle(color: colorgrey, fontSize: 10.0),
                          ),
                          2.height,
                          const Text(
                            'Arshya Cantika Putri',
                            style: TextStyle(
                                color: colorblack,
                                fontSize: 15.0,
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Alamat',
                            style: TextStyle(color: colorgrey, fontSize: 10.0),
                          ),
                          2.height,
                          const Text(
                            'Jln. Ikan Mas No.35A',
                            style: TextStyle(
                                color: colorblack,
                                fontSize: 15.0,
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: colorwhite,
                  fixedSize: const Size(76, 5),
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.logout_rounded,
                      size: 20.0,
                      color: colorblack,
                    ),
                    5.width,
                    const Text(
                      'Logout',
                      style: TextStyle(color: colorblack, fontSize: 12.0),
                    )
                  ],
                )),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(initialindex: 1),
    );
  }
}
