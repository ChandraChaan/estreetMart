import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models.dart';

class HttpserviceC {
  Future<List<bannerModel>> getbannersdata() async {
    print('Network layer arrived');
    var url = Uri.parse('https://estreetmart.sg/api/store/category/');
    print(url);
    print('just entered to hit URL');
    final res = await http.get(url);
    print('done hitting url');
    print(res.statusCode);
    if (res.statusCode == 200) {
      print('Good');

    }
    else {
      print('Bad');
    }
  }
}