import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:librarydigital/app/modules/utils/colors.dart';
import 'package:librarydigital/app/routes/app_pages.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/filter_cat_controller.dart';

class FilterCatView extends GetView<FilterCatController> {
  const FilterCatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = ['All', 'Horror', 'Fantasi', 'Romance'];

    return Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
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
      body: Obx(
        () => Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 22.0),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                key: UniqueKey(),
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Image.asset(
                              'assets/images/cover.jpg',
                              width: 120,
                              height: 110,
                            ),
                          ),
                          3.height,
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
    );
  }
}
