import 'package:final_exam/modal/user_modal.dart';
import 'package:final_exam/utils/api_helper.dart';
import 'package:get/get.dart';

class Coronacontroller extends GetxController {
  RxInt pageindex=0.obs;
  RxList<Coronamodal> searchlist=<Coronamodal>[].obs;
  RxList<Coronamodal> datalist=<Coronamodal>[].obs;
  List image = [
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg",
  ];

  Future<List<Coronamodal>> load_Data()
  {
    return Apihelper.helper.get_coronadata();
  }

  void search(String value)
  {
    List<Coronamodal> simplelist=[];
    if(value.isEmpty)
      {
        searchlist.clear();
      }
    else
      {
        searchlist.clear();
        simplelist.clear();
        for(var c in datalist)
        {
          if(c.country!.toLowerCase().contains(value.toLowerCase()))
          {
            simplelist.add(c);
          }
        }
        searchlist.value=List.from(simplelist);
        print("search:${searchlist.length}");
      }
      }


}
