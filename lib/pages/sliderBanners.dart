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
int i;
  Future<List<bannerModel>> getbannersdata() async {
    var url = Uri.parse('https://api.estreetmart.sg/banners/');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      parseBanners = parsed.map<bannerModel>((json) =>bannerModel.fromJson(json)).toList();
      i=1;
      setState(() {

      });
      return parsed.map<bannerModel>((json) =>bannerModel.fromJson(json)).toList();
    } else {
      i =2;
      return parseBanners;
    }
  }

  @override
  void initState() {
    super.initState();
    i=0;
    getbannersdata();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: i==0? Center(child: CircularProgressIndicator()) : i == 1 ?CarouselSlider(
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
          height: 320.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ): Text('Something went rong do refresh'),
    );
  }
}
