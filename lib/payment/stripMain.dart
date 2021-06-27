import 'package:estreet/payment/strip-payment-service.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class payMentStrip {
  payViaNewCard(BuildContext context, String mony) async {
    ProgressDialog dialog = new ProgressDialog(context);
    dialog.style(message: 'Please wait...');
    await dialog.show();
    var response =
        await StripeService.payWithNewCard(amount: '${mony}', currency: 'SGD');
    await dialog.hide();
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(response.message),
      duration:
          new Duration(milliseconds: response.success == true ? 1200 : 3000),
    ));
  }
}
