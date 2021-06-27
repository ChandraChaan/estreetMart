import 'package:estreet/pages/sliderBanners.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';
import '../unorderlistItem.dart';

class refundPolicy extends StatelessWidget {
  double minheight = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            header(),
            BannerSlider(),
            Padding(
              padding: const EdgeInsets.all(62.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'Estreetmart Return/Refund Policy.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'To make sure that you are happy with your shopping experience in our platform, Estreetmart is glade to offer easy Return/Refund policy. All products have been scanned for quality assurance. However, as a gesture of good will, we may allow our customers to request to return items that are not satisfactory to their expectation, subject to the following:',
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'All orders must be checked upon delivery and contact us at care@estreetmart.sg within below time limits.',
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  UnorderedList([
                    "Perishable goods: Within 02 days from the delivery date.",
                    "Other Groceries: Within 07 days from the delivery date.",
                    "Lifestyle items: Within 14 days from the delivery date.",
                  ]),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'Conditions for return/refund Policy:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  UnorderedList([
                    "Original Condition & tags attached / Original packaging to protect product during transport / Lifestyle items is unworn, unwashed & unaltered.",
                    "Proof of Purchase.",
                    "Include free gifts or any other accessories.",
                  ]),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'Cancellation Policy.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'Refunds will be made in the same form that the payment is received in, within 10 working days from the date of cancellation of order. For example, if you have paid through your credit card, the amount will be refunded back to your credit card. Please allow a maximum of 10 working days for the bank transfer process to go through.',
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'When are returns not possible?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  Text(
                    'There are certain scenarios where it is difficult for us to support returns:',
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: minheight,
                  ),
                  UnorderedList([
                  "Return request is made outside the specified time frame.",
                  "Products damaged because of use or Product is not in the same condition as you received.",
                  "Defective products which are covered under the manufacturer’s warranty. Please refer the issue with the concerned manufacturer.",
                  "Any consumable item which has been used or installed.",
                  "Products with tampered or missing serial numbers.",
                  "Anything missing from the package you’ve received including price tags, labels, original packing and freebies."
                  ]),
                  SizedBox(
                    height: minheight,
                  ),
                  Text('Last updated on 04th May 2021'),
                  SizedBox(
                    height: minheight,
                  ),
                  Text('Copyright by estreetmart.'),
                  SizedBox(
                    height: minheight,
                  ),
                ],
              ),
            ),
            footer(),
          ],
        ),
      ),
    );
  }
}
