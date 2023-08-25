import 'package:final_exam/screen/Dashscreen.dart';
import 'package:final_exam/screen/bookmark_screen.dart';
import 'package:final_exam/screen/search_screen.dart';
import 'package:final_exam/screen/splash_screen.dart';
import 'package:final_exam/screen/view_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) =>  GetMaterialApp(debugShowCheckedModeBanner: false,
        routes: {
        '/':(p0) => Splashscreen(),
        'dash':(p0) => Dashscreen(),
        'home':(p0) => Dashscreen(),
        'search':(p0) => Searchscreen(),
        'bookmark':(p0) => Bookmarkscreen(),
        'view':(p0) => Viewscreen(),
        },
      ),
    ),
  );
}
