import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Get.offAllNamed("dash");
    },);
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.indigo,
        body: Center(child: Icon(Icons.health_and_safety_outlined,color: Colors.white,size: 70.sp,)),
      ),
    );
  }
}
