import 'package:estreet/common/footerlinks/informationSecurity.dart';
import 'package:estreet/common/footerlinks/privacypage.dart';
import 'package:estreet/common/footerlinks/refundPolicy.dart';
import 'package:estreet/common/footerlinks/shippingPolicy.dart';
import 'package:estreet/common/footerlinks/termsAndConditions.dart';
import 'package:estreet/pages/mainhome.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(settings:settings, builder: (_) => HomeScreen());
      case '/privacy_policy':
      // Validation of correct data type
      //   if (args is String) {
      //     return MaterialPageRoute(
      //       builder: (_) => SecondPage(
      //         data: args,
      //       ),
      //     );
      //   }
        return MaterialPageRoute(settings:settings, builder: (_) => privacyPolicy());
      case '/terms_and_conditions':
        return MaterialPageRoute(settings:settings, builder: (_) => termsAndConditions());
      case '/shipping_policy':
        return MaterialPageRoute(settings:settings, builder: (_) => shippingPolicy());
      case '/refund_policy':
        return MaterialPageRoute(settings:settings, builder: (_) => refundPolicy());
      case '/information_security':
        return MaterialPageRoute(settings:settings, builder: (_) => informationSecurity());
      default:
      // If there is no such named route in the switch statement, e.g. /third
      print('no route');
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}