import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:estreet/common/constens.dart';
import 'package:estreet/network/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class BannerSlider extends StatefulWidget {
  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {

  List<bannerModel> parseBanners = [];

  Future<List<bannerModel>> getbannersdata() async {
    print('trying to get banner data');
    var url = Uri.parse('https://api.estreetmart.sg/banners/');
    print(url);
    print('just entered to hit URL');
    final res = await http.get(url);
    print('done hitting url');
    print(res.statusCode);
    if (res.statusCode == 200) {
      print('Good');
      print(res.body);
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      parseBanners = parsed.map<bannerModel>((json) =>bannerModel.fromJson(json)).toList();
      return parsed.map<bannerModel>((json) =>bannerModel.fromJson(json)).toList();
    } else {
      print('Bad');
    }
  }

  @override
  void initState() {
    super.initState();
    getbannersdata();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          for (var i = 0; i < parseBanners.length; i++)
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage('https://api.estreetmart.sg'+'${parseBanners[i].image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 280.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
