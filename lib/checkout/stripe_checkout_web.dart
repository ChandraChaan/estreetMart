@JS()
library stripe;

import 'package:estreet/common/constens.dart';
import 'package:flutter/material.dart';
import 'package:js/js.dart';

void redirectToCheckout(BuildContext _) async {
  final stripe = Stripe(apiKey);
  var price_data;
  var currency;
  var product_data;
  var name;
  var unit_amount;
  var quantity;
  stripe.redirectToCheckout(CheckoutOptions(
    lineItems: [{
      price_data: {
        currency: 'usd',
        product_data: {
          name: 'T-shirt',
        },
        unit_amount: 2000,
      },
      quantity: 1,
    }],
    mode: 'payment',
    successUrl: 'http://localhost:8080/#/success',
    cancelUrl: 'http://localhost:8080/#/cancel',
  ));
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions options);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;

  external String get successUrl;

  external String get cancelUrl;

  external factory CheckoutOptions({
    List<Map<dynamic, Object>> lineItems,
    String mode,
    String successUrl,
    String cancelUrl,
    String sessionId,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;

  external int get quantity;

  external factory LineItem({String price, int quantity});
}
