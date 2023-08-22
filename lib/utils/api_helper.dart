import 'dart:convert';

import 'package:final_exam/modal/infomodal.dart';
import 'package:final_exam/modal/user_modal.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  static Apihelper helper = Apihelper._();

  Apihelper._();

  Future<Infomodal> get_Userid(String name) async {
    String link = "https://instagram174.p.rapidapi.com/api/v1/user/$name/id";
    var response = await http.get(
      Uri.parse(link),
      headers: {
        'X-RapidAPI-Key': 'd0d5a9eab1mshb3fe875b20d73b4p1a9ad3jsn89ea54996bbb',
        'X-RapidAPI-Host': 'instagram174.p.rapidapi.com'
      },
    );
    var json = jsonDecode(response.body);
    // print("${json['result']}");
    Usermodal user = Usermodal(id:"${json['result']}");
    print("userid:==${user.id}");
    Infomodal info=await get_Userinfo("${user.id}");
    return info;
  }

  Future<Infomodal> get_Userinfo(String id) async {
    print("id=${id}");
    String link =
        "https://instagram174.p.rapidapi.com/api/v1/user/$id/info";
    var response = await http.get(Uri.parse(link), headers: {
      'X-RapidAPI-Key': 'd0d5a9eab1mshb3fe875b20d73b4p1a9ad3jsn89ea54996bbb',
      'X-RapidAPI-Host': 'instagram174.p.rapidapi.com'
    });
    var json=jsonDecode(response.body);
    Infomodal info=Infomodal.fromJson(json);
    return info;
  }
}
