import 'package:estreet/common/footerlinks/informationSecurity.dart';
import 'package:estreet/common/footerlinks/privacypage.dart';
import 'package:estreet/common/footerlinks/refundPolicy.dart';
import 'package:estreet/common/footerlinks/shippingPolicy.dart';
import 'package:estreet/common/footerlinks/termsAndConditions.dart';
import 'package:estreet/pages/mainhome.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Best Online Shopping Store in Singapore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/privacy_policy': (context) => privacyPolicy(),
        '/terms_and_conditions': (context) => termsAndConditions(),
        '/shipping_policy': (context) => shippingPolicy(),
        '/refund_policy': (context) => refundPolicy(),
        '/information_security': (context) => informationSecurity(),
      },
    );
  }
}