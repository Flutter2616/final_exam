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
  TextEditingController txtsearch = TextEditingController();
  Coronacontroller controller = Get.put(Coronacontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.indigo,
            title: Container(
              height: 4.h,
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.sp),
              ),
              child: TextField(
                controller: txtsearch,
                onChanged: (value) {
                  controller.search(value);
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded,
                        color: Colors.grey.shade500, size: 15.sp),
                    hintText: "Search country",
                    hintStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                    border: InputBorder.none),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
          child: Obx(
            () => ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Get.toNamed("view",
                          arguments: controller.searchlist[index]);
                    },
                    trailing: Icon(Icons.bookmark_border,
                        color: Colors.indigo, size: 15.sp),
                    leading: CircleAvatar(
                        radius: 12.sp,
                        backgroundImage: NetworkImage(
                            "${controller.searchlist[index].countryInfo!.flag}")),
                    title: Text("${controller.searchlist[index].country}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp)),
                    subtitle: Text(
                        "Population:${controller.searchlist[index].population}",
                        style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.w500,
                            fontSize: 10.sp)),
                  );
                },
                itemCount: controller.searchlist.length),
          ),
        ));
  }
}
