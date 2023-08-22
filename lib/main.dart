import 'package:final_exam/screen/dash_screen.dart';
import 'package:final_exam/screen/likescreen.dart';

import 'package:final_exam/screen/serchscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) =>  GetMaterialApp(debugShowCheckedModeBanner: false,
        routes: {
        '/':(context) => Dashscreen(),
        'search':(context) => Searchscreen(),
        'like':(context) => Likescreen(),
        },
      ),
    ),
  );
}
