import 'package:final_exam/controller/controller.dart';
import 'package:final_exam/screen/likescreen.dart';
import 'package:final_exam/screen/profilescreen.dart';

import 'package:final_exam/screen/serchscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Dashscreen extends StatefulWidget {
  const Dashscreen({super.key});

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  InstaConteroller controller = Get.put(InstaConteroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 18.sp,
                ),
                activeIcon: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                  size: 18.sp,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                  size: 18.sp,
                ),
                activeIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 18.sp,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 18.sp,
                ),
                activeIcon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 18.sp,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                  size: 18.sp,
                ),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 18.sp,
                ),
              ),
            ],
            backgroundColor: Colors.white,
            elevation: 2,
            currentIndex: controller.pageindex.value,
            onTap: (value) {
              controller.pageindex.value = value;
            },
          ),
        ),
        body: Obx(
          () => IndexedStack(
            children: [
              Searchscreen(),
              Searchscreen(),
              Likescreen(),
              Profilescreen(),
            ],
            index: controller.pageindex.value,
          ),
        ),
      ),
    );
  }
}
