import 'package:final_exam/controller/controller.dart';
import 'package:final_exam/screen/Homescreen.dart';
import 'package:final_exam/screen/bookmark_screen.dart';
import 'package:final_exam/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Dashscreen extends StatefulWidget {
  const Dashscreen({super.key});

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  Coronacontroller controller=Get.put(Coronacontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.blueGrey,
                      size: 17.sp,
                    ),activeIcon: Icon(
                  Icons.home,
                  color: Colors.indigo,
                  size: 17.sp,
                )),
                BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      Icons.content_paste_search,
                      color: Colors.blueGrey,
                      size: 17.sp,
                    ),activeIcon: Icon(
                  Icons.content_paste_search,
                  color: Colors.indigo,
                  size: 17.sp,
                )),
                BottomNavigationBarItem(
                    label: "",
                    icon: Icon(
                      Icons.book_outlined,
                      color: Colors.blueGrey,
                      size: 17.sp,
                    ),activeIcon: Icon(
                  Icons.book,
                  color: Colors.indigo,
                  size: 17.sp,
                ))
              ],
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              onTap: (value) {
                controller.pageindex.value=value;
              },
              currentIndex: controller.pageindex.value),
        ),
        body: Obx(
          () => IndexedStack(index: controller.pageindex.value,
            children: [
              Homescreen(),
              Searchscreen(),
              Bookmarkscreen(),
            ],
          ),
        ),
      ),
    );
  }
}
