import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:librarydigital/app/modules/utils/bottomnav.dart';
import 'package:librarydigital/app/modules/utils/colors.dart';
import 'package:librarydigital/app/routes/app_pages.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = ['All', 'Horror', 'Fantasi', 'Romance'];

    return Scaffold(
      backgroundColor: colorbase,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.toNamed(Routes.LOGIN);
          },
          icon: const Icon(Icons.login),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'BUKU FAVORIT',
                        style: TextStyle(
                            color: colorblack,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 95,
                        height: 30,
                        decoration: BoxDecoration(
                          color: colorwhite,
                          boxShadow: const [
                            BoxShadow(
                              color: colorgrey,
                              offset: Offset(0, 2),
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: DropdownButton(
                          isExpanded: true,
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10.0),
                          dropdownColor: colorwhite,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              controller.selectedValue.value.isNotEmpty
                                  ? controller.selectedValue.value
                                  : 'Filter',
                              style: const TextStyle(color: colorblack),
                            ),
                          ),
                          icon: const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: colorblack,
                              size: 20,
                            ),
                          ),
                          items: items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          value: controller.selectedValue.value.isNotEmpty
                              ? controller.selectedValue.value
                              : null,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              controller.setSelectedValue(newValue);
                            }
                          },
                          underline: const SizedBox(),
                        ),
                      )
                    ],
                  ),
                ),
                10.height,
                SizedBox(
                  height: 195,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.DETAIL);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          width: 125,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: colorwhite,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/cover.jpg',
                                    width: 120,
                                    height: 110,
                                  ),
                                ),
                              ),
                              10.height,
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0, right: 6.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'The Trouble With Perfect',
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                        maxLines: 1,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFD233),
                                          size: 20.0,
                                        ),
                                        Text(
                                          '4.5/5',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                10.height,
                Container(
                  width: double.infinity,
                  height: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          'LIST PEMINJAMAN',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      15.height,
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: const BoxDecoration(
                                  color: colorwhite,
                                  border: Border(
                                    bottom: BorderSide(color: colorblack),
                                  ),
                                ),
                                width: double.infinity,
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/images/cover.jpg',
                                    width: 60,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                  title: const Text(
                                    'The Trouble With Perfect',
                                    style: TextStyle(
                                        color: colorblack,
                                        fontSize: 15.0,
                                        overflow: TextOverflow.ellipsis),
                                    maxLines: 1,
                                  ),
                                  subtitle: const Text(
                                    'Thu, Jan 13, 2024 - Mon, Jan 16, 2024',
                                    style: TextStyle(
                                        color: colorblack,
                                        fontSize: 10.0,
                                        overflow: TextOverflow.ellipsis),
                                    maxLines: 1,
                                  ),
                                  trailing: SizedBox(
                                    height: 32,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor:
                                            const Color(0xff88AB8E),
                                        fixedSize: const Size(80, 10),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0, vertical: 2.0),
                                      ),
                                      onPressed: () {
                                        dialogKembalikan(context);
                                      },
                                      child: const Text(
                                        'Kembalikan',
                                        style: TextStyle(
                                            color: colorwhite, fontSize: 11.0),
                                      ),
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                20.height,
                SizedBox(
                  width: double.infinity,
                  height: 600,
                  child: GridView.builder(
                    itemCount: 20,
                    key: UniqueKey(),
                    padding: const EdgeInsets.all(20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 7.5 / 8.0,
                      crossAxisSpacing: 30.0,
                      mainAxisSpacing: 20.0,
                    ),
                    // shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.DETAIL);
                        },
                        child: Container(
                          width: 100,
                          decoration: const BoxDecoration(
                            color: colorwhite,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Image.asset(
                                  'assets/images/cover.jpg',
                                  width: 120,
                                  height: 110,
                                ),
                              ),
                              3.height,
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'The Trouble With Perfect',
                                        style: TextStyle(
                                            color: colorblack,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 1,
                                      ),
                                    ),
                                    SizedBox(),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFD233),
                                          size: 15.0,
                                        ),
                                        Text(
                                          '4.5/5',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(initialindex: 0),
    );
  }
}

void dialogKembalikan(BuildContext context) {
  Get.defaultDialog(
    title: 'Pengembalian',
    titlePadding: const EdgeInsets.only(right: 126.0, top: 20.0),
    titleStyle: const TextStyle(color: colorblack, fontWeight: FontWeight.w400),
    content: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nama Peminjam',
                style: TextStyle(color: colordarkgrey, fontSize: 13.0),
              ),
              3.height,
              Container(
                width: double.infinity,
                // height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: colordarkgrey, width: 1.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 7.0, right: 7.0, bottom: 10.0),
                  child: Text(
                    'Rasya Cantika Putri',
                    style: TextStyle(
                        color: colorblack,
                        fontSize: 15.0,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
          10.height,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Judul Buku',
                style: TextStyle(color: colordarkgrey, fontSize: 13.0),
              ),
              3.height,
              Container(
                width: double.infinity,
                // height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: colordarkgrey, width: 1.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 7.0, right: 7.0, bottom: 10.0),
                  child: Text(
                    'The Trouble With Perfect',
                    style: TextStyle(
                        color: colorblack,
                        fontSize: 15.0,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
          10.height,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tanggal Peminjaman - Tanggal Pengembalian',
                style: TextStyle(color: colordarkgrey, fontSize: 13.0),
              ),
              3.height,
              Container(
                width: double.infinity,
                // height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: colordarkgrey, width: 1.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 7.0, right: 7.0, bottom: 10.0),
                  child: Text(
                    'Thu, Jan 13, 2024 - Mon, Jan 16, 2024',
                    style: TextStyle(
                        color: colorblack,
                        fontSize: 15.0,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff39A7FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    fixedSize: const Size(80, 10)),
                onPressed: () {
                  dialogDenda(context);
                  // Get.back();
                },
                child: const Text(
                  'Kembalikan',
                  style: TextStyle(color: colorwhite, fontSize: 14.0),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

void dialogDenda(BuildContext context) {
  Get.defaultDialog(
    title: 'Pembayaran',
    titlePadding: const EdgeInsets.only(right: 140.0, top: 20.0),
    titleStyle: const TextStyle(color: colorblack, fontWeight: FontWeight.w400),
    content: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nominal Denda',
                style: TextStyle(color: colorblack, fontSize: 13.0),
              ),
              3.height,
              Container(
                width: double.infinity,
                // height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: colordarkgrey, width: 1.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 7.0, right: 7.0, bottom: 10.0),
                  child: Text(
                    'Rp. 1000',
                    style: TextStyle(
                        color: colorblack,
                        fontSize: 17.0,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff39A7FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    fixedSize: const Size(70, 10)),
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  'Bayar',
                  style: TextStyle(color: colorwhite, fontSize: 14.0),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

void dialogQR(BuildContext context) {
  Get.defaultDialog(
    title: '',
    titlePadding: const EdgeInsets.only(right: 140.0, top: 20.0),
    titleStyle: const TextStyle(color: colorblack, fontWeight: FontWeight.w400),
    content: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Scan QR di Bawah ini Untuk Melakukan Transaksi Anda',
            style: TextStyle(color: colorgrey, fontSize: 13.0),
          ),
          10.height,
          QrImageView(data: data)
        ],
      ),
    ),
  );
}
