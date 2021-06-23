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

  int i;

  Future<List<catagiryModel>> getCatagirydata() async {
    var url = Uri.parse('https://api.estreetmart.sg/category/');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      parseCategirys = parsed
          .map<catagiryModel>((json) => catagiryModel.fromJson(json))
          .toList();
      i = 1;
      setState(() {

      });
      return parsed
          .map<catagiryModel>((json) => catagiryModel.fromJson(json))
          .toList();
    } else {
      i = 2;
      setState(() {

      });
      return parseCategirys;
    }
  }

  @override
  void initState() {
    super.initState();
    i = 0;
    getCatagirydata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          header(),
          BannerSlider(),
          i==0?Center(child: CircularProgressIndicator()): i ==2 ?Text('Error was come while categiries'):Text(''),
          for (var a = 0; a < parseCategirys.length; a++)
            cardItems(name:parseCategirys[a].title, slug: parseCategirys[a].slug,),
          footer()
        ],
      ),
    );
  }
}
