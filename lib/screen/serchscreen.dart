import 'package:final_exam/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  InstaConteroller controller=Get.put(InstaConteroller());
  TextEditingController txtsearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            height: 3.5.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                color: Colors.grey.shade200),
            child: TextField(onChanged: (value) async {
                   controller.info=await controller.search_user(value);
            },
              controller: txtsearch,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "search",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 15.sp,
                    color: Colors.black,
                  )),
            ),
          ),
          const SizedBox(height: 10),
          // Visibility(visible: controller.info!=null?true:false,child: ListTile(title: Text("${controller.info!.result!.fullName}"),))
        ],
      ),
    );
  }
}
