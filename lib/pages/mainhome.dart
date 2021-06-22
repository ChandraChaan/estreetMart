import 'dart:convert';
import 'package:estreet/common/cardItems.dart';
import 'package:http/http.dart' as http;
import 'package:estreet/common/footer.dart';
import 'package:estreet/common/header.dart';
import 'package:estreet/network/models.dart';
import 'package:estreet/pages/sliderBanners.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<catagiryModel> parseCategirys = [];

  Future<List<catagiryModel>> getCatagirydata() async {
    print('trying to get banner data');
    var url = Uri.parse('https://api.estreetmart.sg/category/');
    print(url);
    print('just entered to hit URL');
    final res = await http.get(url);
    print('done hitting url');
    print(res.statusCode);
    if (res.statusCode == 200) {
      print('Good');
      print(res.body);
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      parseCategirys = parsed
          .map<catagiryModel>((json) => catagiryModel.fromJson(json))
          .toList();
      return parsed
          .map<catagiryModel>((json) => catagiryModel.fromJson(json))
          .toList();
    } else {
      print('Bad');
    }
  }

  @override
  void initState() {
    super.initState();
    getCatagirydata();
  }

  @override
  Widget build(BuildContext context) {
    getCatagirydata();
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          header(),
          BannerSlider(),
          for (var a = 0; a < parseCategirys.length; a++)
            cardItems(name:parseCategirys[a].title, slug: parseCategirys[a].slug,),
          footer()
        ],
      ),
    );
  }
}
