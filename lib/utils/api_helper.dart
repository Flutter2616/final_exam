import 'dart:convert';
import 'package:final_exam/modal/user_modal.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  static Apihelper helper = Apihelper._();

  Apihelper._();

  Future<List<Coronamodal>> get_coronadata() async {
    String link = "https://corona.lmao.ninja/v2/countries";
    var response = await http.get(
      Uri.parse(link),
    );
    List json = jsonDecode(response.body);
    List<Coronamodal> coronalist=json.map((e) => Coronamodal.fromJson(e)).toList();
    return coronalist;
  }

  
}
