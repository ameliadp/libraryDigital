import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:librarydigital/app/modules/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Center(
                          child: Image.asset('assets/images/logoPerpus.png'),
                        ),
                      ),
                      20.height,
                      //formn
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                          bottom: 50.0,
                        ),
                        child: Container(
                          height: controller.isRegis ? 510 : 290,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                height: 50,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 75,
                                left: 0,
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 35.0),
                                  child: RichText(
                                    text: controller.isRegis
                                        ? const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Isikan ',
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: colorblack),
                                              ),
                                              TextSpan(
                                                text: 'Data ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.0,
                                                    color: colorBold),
                                              ),
                                              TextSpan(
                                                text: 'anda untuk membuat ',
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: colorblack),
                                              ),
                                              TextSpan(
                                                text: 'Akun ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.0,
                                                    color: colorBold),
                                              ),
                                              TextSpan(
                                                text: 'anda',
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: colorblack),
                                              ),
                                            ],
                                          )
                                        : const TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Gunakan ',
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: colorblack),
                                              ),
                                              TextSpan(
                                                text: 'Username ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.0,
                                                    color: colorBold),
                                              ),
                                              TextSpan(
                                                text: 'dan ',
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: colorblack),
                                              ),
                                              TextSpan(
                                                text: 'Password ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.0,
                                                    color: colorBold),
                                              ),
                                              TextSpan(
                                                text:
                                                    'untuk masuk ke akun anda',
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: colorblack),
                                              ),
                                            ],
                                          ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 115,
                                left: 0,
                                right: 0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Username',
                                        style: TextStyle(
                                            fontSize: 14.0, color: colorgrey),
                                      ),
                                    ),
                                    2.height,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: TextFormField(
                                        showCursor: true,
                                        cursorColor: colorPrimary,
                                        controller: controller.userC,
                                        autocorrect: false,
                                        keyboardType: TextInputType.name,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 10),
                                          prefixIcon: const Icon(Icons.person),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: colorPrimary),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          hintText: 'Username',
                                        ),
                                      ),
                                    ),
                                    8.height,
                                    if (controller.isRegis)
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                              fontSize: 14.0, color: colorgrey),
                                        ),
                                      ),
                                    2.height,
                                    if (controller.isRegis)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, right: 15.0),
                                        child: TextFormField(
                                          showCursor: true,
                                          cursorColor: colorPrimary,
                                          controller: controller.emailC,
                                          autocorrect: false,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 10),
                                            prefixIcon: const Icon(Icons.email),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: colorPrimary),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Email',
                                          ),
                                        ),
                                      ),
                                    8.height,
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Password',
                                        style: TextStyle(
                                            fontSize: 14.0, color: colorgrey),
                                      ),
                                    ),
                                    2.height,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: TextFormField(
                                        obscureText:
                                            controller.isPasswordHidden.value,
                                        showCursor: true,
                                        cursorColor: colorPrimary,
                                        controller: controller.passC,
                                        autocorrect: false,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                controller
                                                    .tooglePasswordVisibility();
                                              },
                                              icon: controller
                                                      .isPasswordHidden.value
                                                  ? const Icon(
                                                      Icons.visibility_off)
                                                  : const Icon(
                                                      Icons.visibility)),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 10),
                                          prefixIcon:
                                              const Icon(Icons.lock_outline),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: colorPrimary),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          hintText: 'Password',
                                        ),
                                      ),
                                    ),
                                    8.height,
                                    if (controller.isRegis)
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'Nama Lengkap',
                                          style: TextStyle(
                                              fontSize: 14.0, color: colorgrey),
                                        ),
                                      ),
                                    2.height,
                                    if (controller.isRegis)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, right: 15.0),
                                        child: TextFormField(
                                          showCursor: true,
                                          cursorColor: colorPrimary,
                                          controller: controller.nameC,
                                          autocorrect: false,
                                          keyboardType: TextInputType.name,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 10),
                                            prefixIcon: const Icon(
                                                Icons.person_outline),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: colorPrimary),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Nama Lengkap',
                                          ),
                                        ),
                                      ),
                                    8.height,
                                    if (controller.isRegis)
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'Alamat',
                                          style: TextStyle(
                                              fontSize: 14.0, color: colorgrey),
                                        ),
                                      ),
                                    2.height,
                                    if (controller.isRegis)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, right: 15.0),
                                        child: TextFormField(
                                          showCursor: true,
                                          cursorColor: colorPrimary,
                                          controller: controller.alamatC,
                                          autocorrect: false,
                                          keyboardType:
                                              TextInputType.streetAddress,
                                          textInputAction: TextInputAction.done,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 10),
                                            prefixIcon: const Icon(Icons.home),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: colorPrimary),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            hintText: 'Alamat',
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //button
                      // Container(
                      //   // width: double.infinity,
                      //   height: 125,
                      //   decoration: BoxDecoration(
                      //     color: colorwhite,
                      //     borderRadius: BorderRadius.circular(20.0),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 3,
                      //         blurRadius: 7,
                      //         offset: const Offset(0, 3),
                      //       ),
                      //     ],
                      //   ),
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       InkWell(
                      //         onTap: () {
                      //           controller.isRegis = !controller.isRegis;
                      //         },
                      //         child: RichText(
                      //           text: controller.isRegis
                      //               ? const TextSpan(
                      //                   children: <TextSpan>[
                      //                     TextSpan(
                      //                       text: 'Sudah Puya Akun? ',
                      //                       style: TextStyle(
                      //                           fontSize: 13.0,
                      //                           color: colorblack),
                      //                     ),
                      //                     TextSpan(
                      //                       text: 'Masuk Disini ',
                      //                       style: TextStyle(
                      //                         fontSize: 13.0,
                      //                         color: Color(0xff206CFE),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 )
                      //               : const TextSpan(
                      //                   children: <TextSpan>[
                      //                     TextSpan(
                      //                       text: 'Belum Punya Akun? ',
                      //                       style: TextStyle(
                      //                           fontSize: 13.0,
                      //                           color: colorgrey),
                      //                     ),
                      //                     TextSpan(
                      //                       text: 'Daftar Disini ',
                      //                       style: TextStyle(
                      //                         fontSize: 13.0,
                      //                         color: Color(0xff206CFE),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //         ),
                      //       ),
                      //       10.height,
                      //       Padding(
                      //         padding: const EdgeInsets.only(
                      //             left: 20.0, right: 20.0),
                      //         child: ElevatedButton(
                      //           onPressed: () {},
                      //           style: ElevatedButton.styleFrom(
                      //             backgroundColor: colorPrimary,
                      //             minimumSize: const Size(double.infinity, 45),
                      //           ),
                      //           child: Text(
                      //             controller.isRegis ? 'Daftar' : 'Masuk',
                      //             style: const TextStyle(
                      //                 color: colorwhite, fontSize: 16),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => Container(
              // margin: controller.isRegis
              //     ? const EdgeInsets.only(top: 0)
              //     : const EdgeInsets.only(top: 118),
              height: 120,
              decoration: BoxDecoration(
                color: colorwhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.isRegis = !controller.isRegis;
                      },
                      child: RichText(
                        text: controller.isRegis
                            ? const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Sudah Punya Akun? ',
                                    style: TextStyle(
                                        fontSize: 13.0, color: colorgrey),
                                  ),
                                  TextSpan(
                                    text: 'Masuk Disini',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff206CFE),
                                    ),
                                  ),
                                ],
                              )
                            : const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Belum Punya Akun? ',
                                    style: TextStyle(
                                        fontSize: 13.0, color: colorgrey),
                                  ),
                                  TextSpan(
                                    text: 'Daftar Disini ',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff206CFE),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                    10.height,
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: colorPrimary,
                          minimumSize: const Size(double.infinity, 45),
                        ),
                        child: Text(
                          controller.isRegis ? 'Daftar' : 'Masuk',
                          style:
                              const TextStyle(color: colorwhite, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}

// void dialogKembalikan(BuildContext context) {
//   TextEditingController ulasanC = TextEditingController();

//   Get.defaultDialog(
//     title: 'Ulasan',
//     titlePadding: const EdgeInsets.only(right: 190.0, top: 20.0),
//     titleStyle: const TextStyle(color: colorblack, fontWeight: FontWeight.w400),
//     content: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 5.0),
//           height: 100.0,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               border: Border.all(color: colorblack, width: 1.0)),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//             child: TextFormField(
//               showCursor: true,
//               cursorColor: colorPrimary,
//               controller: ulasanC,
//               maxLines: 5,
//               decoration: const InputDecoration(
//                 hintText: 'Tuliskan ulasan anda disini',
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//         ),
//         10.height,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: colorPrimary,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 4.0, vertical: 2.0),
//                   fixedSize: const Size(80, 10)),
//               onPressed: () {
//                 Get.back();
//               },
//               child: const Text(
//                 'Kirim',
//                 style: TextStyle(color: colorwhite, fontSize: 14.0),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
