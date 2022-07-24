import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class KartDetailsService {
  /* static final http.Client httpClient = http.Client();*/

  static void getData() async {
    print("Entering into API call Method");

    try {
      var url = Uri.parse(
          "https://jsonplaceholder.typicode.com/users");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        debugPrint("Success");
      } else if (response.statusCode == 404) {
        debugPrint("Fail");
      } else if (response.statusCode == 500) {
        debugPrint("Server Error");
      } else {
        debugPrint("Cross Origin Error");
      }

      debugPrint("response:" + response.body.toString(), wrapWidth: 1024);

      final json = jsonDecode(response.body);

      if (json != null && json.length > 0) {

      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
