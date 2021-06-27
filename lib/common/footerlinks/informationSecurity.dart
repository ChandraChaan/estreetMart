import 'package:estreet/pages/sliderBanners.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class informationSecurity extends StatelessWidget {
  double minheight = 45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          header(),
          BannerSlider(),
          Padding(
            padding: const EdgeInsets.all(62.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: minheight,),
                Text(
                  'Policy Standards and/or Practices in Information Security',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: minheight,),
                Text(
                  'We take precautions to protect customers\' information. When they submit any information via our website (such as Customer Name, Delivery Address, Phone Number, etc), their information is protected both online and offline. Information is not accessible to an unauthorized person. Only employees who need the information to perform a specific job are granted access to personally identifiable information.',
                  style: TextStyle(),
                ),
                SizedBox(height: minheight,),
                Text(
                  'Wherever thr Customer enters sensitive information (such as credit card data), that information is encrypted and transmitted to the Gateway Provider in a secure way. One can verify this by looking for a closed lock icon at the bottom of the web browser, or looking for “https" at the beginning of the address of the web page. The computers/servers in which the Gateway Provider stores personally identifiable information are kept in a secure environment.',
                  style: TextStyle(),
                ),
                SizedBox(height: minheight,),
              ],
            ),
          ),
          footer(),
        ],
      ),
    );
  }
}
