import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:librarydigital/app/modules/detail/controllers/detail_controller.dart';
import 'package:librarydigital/app/modules/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: 400.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: colorwhite,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Image.asset(
                      'assets/images/cover.jpg',
                      width: 230,
                      height: 220,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const Divider(
                  color: colorgrey,
                  thickness: 1,
                ),
                5.height,
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFFD233),
                        size: 20.0,
                      ),
                      3.width,
                      const Text(
                        '4.5/5',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                10.height,
                Container(
                  padding: const EdgeInsets.only(left: 13.0, right: 20.0),
                  width: double.infinity,
                  child: const Text(
                    'The Trouble With The Perfect',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                15.height,
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Penulis',
                            style:
                                TextStyle(color: colordarkgrey, fontSize: 12.0),
                          ),
                          34.width,
                          const Text(':',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0)),
                          8.width,
                          const Text('SimpleMan',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0))
                        ],
                      ),
                      5.height,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Penerbit',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0)),
                          29.width,
                          const Text(':',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0)),
                          8.width,
                          const Text('Bukune',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0))
                        ],
                      ),
                      5.height,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Tahun Terbit',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0)),
                          11.width,
                          const Text(':',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0)),
                          8.width,
                          const Text('13 September 2019',
                              style: TextStyle(
                                  color: colordarkgrey, fontSize: 12.0))
                        ],
                      ),
                    ],
                  ),
                ),
                18.height,
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ulasan Buku',
                        style: TextStyle(
                            color: colorblack,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          side: const BorderSide(
                            color: colorblack,
                          ),
                          backgroundColor: colorwhite,
                          fixedSize: const Size(85, 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 2.0),
                        ),
                        onPressed: () {
                          dialogUlasan(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add,
                              color: colorblack,
                              size: 10.0,
                            ),
                            2.width,
                            const Text(
                              'Tambah Ulasan',
                              style:
                                  TextStyle(color: colorblack, fontSize: 10.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                10.height,
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, bottom: 80.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: colorblack, width: 1.0),
                      color: colorwhite,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ExpansionTile(
                            title: Text(
                              'Rasya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: colorblack,
                                fontSize: 15.0,
                              ),
                            ),
                            iconColor: colorPrimary,
                            // subtitle: Text(
                            //   'Novelnya bagus, ceritanya di angkat dari kisah nyata.dan bagus banget pokoke wes pinjamo bintang 5 ceritae bagus Novelnya bagus, ceritanya di angkat dari kisah nyata.',
                            //   style: TextStyle(
                            //     color: colorblack,
                            //     fontSize: 12.0,
                            //   ),
                            //   maxLines:
                            //       2, // Maximum lines to display before "Read More" is shown
                            //   overflow: TextOverflow.ellipsis,
                            // ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0, bottom: 8.0),
                                child: Text(
                                  'Novelnya bagus, ceritanya di angkat dari kisah nyata. Novelnya bagus, ceritanya di angkat dari kisah nyata. Novelnya bagus, ceritanya di angkat dari kisah nyata.',
                                  style: TextStyle(
                                    color: colorblack,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          );
                          // return Container(
                          //   width: double.infinity,
                          //   decoration: const BoxDecoration(
                          //     color: colorwhite,a
                          //     border: Border(
                          //       bottom:
                          //           BorderSide(color: colorblack, width: 1.0),
                          //     ),
                          //   ),
                          //   child: const ListTile(
                          //     title: Text(
                          //       'Rasya',
                          //       style: TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //         color: colorblack,
                          //         fontSize: 15.0,
                          //         overflow: TextOverflow.ellipsis,
                          //       ),
                          //       maxLines: 1,
                          //     ),
                          //     subtitle: Text(
                          //       'Novelnya bagus, ceritanya di angkat dari kisah nyata.',
                          //       style: TextStyle(
                          //         color: colorblack,
                          //         fontSize: 12.0,
                          //         overflow: TextOverflow.ellipsis,
                          //       ),
                          //       maxLines: 1,
                          //     ),
                          //   ),
                          // );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 637.0,
            right: 20.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 2,
                shadowColor: colorgrey,
                fixedSize: const Size(110, 20),
                backgroundColor: colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              ),
              onPressed: () {},
              child: const Text(
                'Pinjam Buku',
                style: TextStyle(color: colorwhite, fontSize: 12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void dialogUlasan(BuildContext context) {
  TextEditingController ulasanC = TextEditingController();

  Get.defaultDialog(
    title: 'Ulasan',
    titlePadding: const EdgeInsets.only(right: 190.0, top: 20.0),
    titleStyle: const TextStyle(color: colorblack, fontWeight: FontWeight.w400),
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 100.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: colorgrey, width: 1.0)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: TextFormField(
              showCursor: true,
              cursorColor: colorPrimary,
              controller: ulasanC,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Tuliskan ulasan anda disini',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        10.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: colorPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 2.0),
                  fixedSize: const Size(80, 10)),
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'Kirim',
                style: TextStyle(color: colorwhite, fontSize: 14.0),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
