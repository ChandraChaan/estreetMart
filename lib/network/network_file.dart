import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models.dart';

class HttpserviceC {
  Future<List<bannerModel>> getbannersdata() async {
    var url = Uri.parse('https://api.estreetmart.sg/api/store/category/');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      print('Good');
    } else {
      print('Bad');
    }
  }

  Future<String> postUserotpdata(
      {String email,
      String phone,
      String name,
      String details,
      String address,
      int otp}
      /*postUserotpdataModel dataModel*/) async {
    var url = Uri.parse('https://api.estreetmart.sg/orders/');
    var body = {
      'name': '${name}',
      /*dataModel.name,*/
      'phone_number': '${phone}',
      /*dataModel.phone,*/
      'email': '${email}',
      /*dataModel.email,*/
      'delivery_detail': '${details}',
      /*dataModel.date,*/
      'address': '${address}',
      /*dataModel.address,*/
      'otp': '${otp}', /*dataModel.otp*/
    };
    final res = await http.post(url, body: body);
    if (res.statusCode == 200 || res.statusCode == 201) {
      print('Good');
    } else {
      print('Bad');
    }
  }
}
