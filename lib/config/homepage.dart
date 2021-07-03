import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app_pages.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Best Online Shopping Store in Singapore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   '/privacy_policy': (context) => privacyPolicy(),
      //   '/terms_and_conditions': (context) => termsAndConditions(),
      //   '/shipping_policy': (context) => shippingPolicy(),
      //   '/refund_policy': (context) => refundPolicy(),
      //   '/information_security': (context) => informationSecurity(),
      // },
    );
  }
}