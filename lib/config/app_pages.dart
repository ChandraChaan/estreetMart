import 'package:estreet/common/dilogs.dart';
import 'package:estreet/common/footerlinks/informationSecurity.dart';
import 'package:estreet/common/footerlinks/privacypage.dart';
import 'package:estreet/common/footerlinks/refundPolicy.dart';
import 'package:estreet/common/footerlinks/shippingPolicy.dart';
import 'package:estreet/common/footerlinks/termsAndConditions.dart';
import 'package:estreet/pages/mainhome.dart';
import 'package:get/get.dart';
part 'app_route.dart';
class AppPages {
  static const INITIAL = Routes.DEFAULT;
  static final routes = [
    GetPage(
        name: Routes.DEFAULT,
        page: () => HomeScreen()),
    GetPage(
        name: Routes.privacy_policy,
        page: () => privacyPolicy()),
    GetPage(
        name: Routes.terms_and_conditions,
        page: () => termsAndConditions()),
    GetPage(
        name: Routes.shipping_policy,
        page: () => shippingPolicy()),
    GetPage(
        name: Routes.refund_policy,
        page: () => refundPolicy()),
    GetPage(
        name: Routes.information_security,
        page: () => informationSecurity()),
    GetPage(
        name: Routes.success,
        page: () => SuccessPage()),
  ];
}