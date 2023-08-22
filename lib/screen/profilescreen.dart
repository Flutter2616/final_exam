import 'package:final_exam/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  InstaConteroller controller = Get.put(InstaConteroller());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 35.h,
            bottom: TabBar(onTap: (value) {

            },isScrollable: false,indicatorColor: Colors.black,indicatorWeight: 1,
              tabs: [
                Tab(
                  child: Icon(Icons.grid_on_sharp, color: Colors.black),
                ),
                Tab(
                  child: Icon(Icons.slideshow, color: Colors.black),
                ),
                Tab(
                  child: Icon(Icons.person_pin_outlined, color: Colors.black),
                ),
              ],
            ),
            flexibleSpace: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text("prince_rawal25",
                      style: TextStyle(color: Colors.black, fontSize: 15.sp)),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            // backgroundImage: NetworkImage(""),
                            radius: 25.sp,
                          ),
                          Text("prince rawal",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp)),
                        ],
                      ),
                      info("100", "Posts"),
                      info("100", "Followers"),
                      info("100", "Following"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 3.h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.sp)),
                          child: Text("Edit profile",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 3.h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.sp)),
                          child: Text("Share profile",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp)),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 3.h,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.sp)),
                          child: Icon(
                            Icons.person_add_outlined,
                            size: 12.sp,
                          )),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text("Story higlights",
                      style: TextStyle(
                          fontSize: 9.sp,
                          color: Colors.black,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w400)),
                  Text("Keep your favorite Stories on your profile",
                      style: TextStyle(
                          fontSize: 9.sp,
                          color: Colors.black,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(
                                Icons.add,
                                size: 15.sp,
                                color: Colors.black,
                              ),
                              radius: 18.sp,
                            ),
                            Text(
                              "New",
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: controller.image
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade200,
                                    backgroundImage: NetworkImage("$e"),
                                    radius: 18.sp,
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Container(),
          ),
        ),
      ),
    );
  }

  Column info(String number, String title) {
    return Column(
      children: [
        Text("$number",
            style: TextStyle(
                color: Colors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600)),
        Text("$title", style: TextStyle(color: Colors.black, fontSize: 10.sp)),
      ],
    );
  }
}
