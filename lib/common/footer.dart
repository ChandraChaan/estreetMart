import 'package:estreet/config/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class footer extends StatelessWidget {
  // final List _Linkchildren = <Widget>[
  //   TextButton(onPressed: () {
  //     Navigator.pushNamed(context, '/privacy_policy');
  //   }, child: Text('Terms and conditions')),
  //   TextButton(onPressed: () {}, child: Text('Privacy policy')),
  //   TextButton(onPressed: () {}, child: Text('Shipping policy')),
  //   TextButton(onPressed: () {}, child: Text('Refund policy')),
  //   TextButton(onPressed: () {}, child: Text('Information security')),
  // ];
double bithight = 9;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: size.width < 850
          ? const EdgeInsets.all(3)
          : const EdgeInsets.only(left: 75, right: 75, top: 50, bottom: 50),
      child: Container(
        // height: 52,
        width: size.width,
        child: size.width > 800
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/terms_and_conditions');
                            Get.toNamed(Routes.terms_and_conditions);
                          },
                          child: Text('Terms and conditions')),
                      TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/privacy_policy');
                            Get.toNamed(Routes.privacy_policy);

                          },
                          child: Text('Privacy policy')),
                      TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/shipping_policy');
                            Get.toNamed(Routes.shipping_policy);

                          },
                          child: Text('Shipping policy')),
                      TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/refund_policy');
                            Get.toNamed(Routes.refund_policy);
                          },
                          child: Text('Refund policy')),
                      TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/information_security');
                            Get.toNamed(Routes.information_security);
                          },
                          child: Text('Information security')),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'images/normal/Google-logo.png'),
                                ),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(57)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'images/normal/Google-logo1.png'),
                                ),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(57)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'images/normal/Google-logo2.png'),
                                ),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(57)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('All rights reserved @KSBS group 2021'),
                      Container(
                        // width: 54,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            new Image.asset(
                              'images/normal/whatsapp.png',
                              width: 16,
                              height: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '+65 880 112 77',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: bithight,),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/terms_and_conditions');
                        Get.toNamed(Routes.terms_and_conditions);

                      },
                      child: Text('Terms and conditions')),
                  SizedBox(height: bithight,),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/privacy_policy');
                        Get.toNamed(Routes.privacy_policy);
                      },
                      child: Text('Privacy policy')),
                  SizedBox(height: bithight,),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/shipping_policy');
                        Get.toNamed(Routes.shipping_policy);
                      },
                      child: Text('Shipping policy')),
                  SizedBox(height: bithight,),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/refund_policy');
                        Get.toNamed(Routes.refund_policy);

                      },
                      child: Text('Refund policy')),
                  SizedBox(height: bithight,),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/information_security');
                        Get.toNamed(Routes.information_security);
                      },
                      child: Text('Information security')),
                  SizedBox(height: bithight,),
                  Container(
                    // width: 54,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Image.asset(
                          'images/normal/whatsapp.png',
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '+65 880 112 77',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('images/normal/Google-logo.png'),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(57)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('images/normal/Google-logo1.png'),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(57)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('images/normal/Google-logo2.png'),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(57)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('All rights reserved @KSBS group 2021'),
                  SizedBox(height: bithight,),
                ],
              ),
      ),
    );
  }
}
