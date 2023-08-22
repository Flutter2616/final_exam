import 'package:final_exam/modal/infomodal.dart';
import 'package:final_exam/utils/api_helper.dart';
import 'package:get/get.dart';

class InstaConteroller extends GetxController {
  RxInt pageindex = 0.obs;
  Infomodal? info;
  List image = [
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
  ];

  Future<Infomodal?> search_user(String name)
  async {
    print("name:===$name");
     info=await Apihelper.helper.get_Userid(name);
     return info;
  }


}
