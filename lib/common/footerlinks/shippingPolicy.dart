import 'package:estreet/pages/sliderBanners.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class shippingPolicy extends StatelessWidget {
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
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Shipping/Delivery Policy',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Estreetmart will provide delivery service in mainland Singapore on any orders placed through www.estreetmart.sg',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'How We Deliver?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'We will deliver orders at the front door of the delivery address provided, where estreetmart has been notified to leave your order at your front door, estreetmart shall not be liable for any consequential, direct/indirect damage arising after delivery at front door. ',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'You may select available delivery slot while placing orders. Orders will be delivered to you on the day and slot selected by you, however due to unforeseen situations there may be delay/changes in delivery time [for such situation, our customer service executive will reach you to coordinate via contacts provided while you are placing order]',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'No deliveries are made on Sundays & Public Holidays. Based on request we may try to organise deliveries during these periods with some extra cost on case-to-case basis.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'If you ordered two or more items from different categories, you may receive them in multiple boxes on different days, because of varying item availability and shipping locations. Often, products will be shipped separately from one another for added safety in transit, so you may receive more than one delivery to your address.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'If you ordered two or more items from different categories, you may receive them in multiple boxes on different days, because of varying item availability and shipping locations. Often, products will be shipped separately from one another for added safety in transit, so you may receive more than one delivery to your address.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'If you ordered two or more items from different categories, you may receive them in multiple boxes on different days, because of varying item availability and shipping locations. Often, products will be shipped separately from one another for added safety in transit, so you may receive more than one delivery to your address.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Types of Shipping',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Standard Shipping: Min 03 business days to deliver, based on delivery slot selected. \nExpress Delivery: within 48 Hrs from the time order confirmed.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Standard delivery fees applicable as below:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Text('ORDER VALUE (SGD)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                              Text(
                                  new String.fromCharCodes(
                                          new Runes('\u0024')) +
                                      '40 and above',
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                              Text(
                                  'Below ' +
                                      new String.fromCharCodes(
                                          new Runes('\u0024')) +
                                      '40',
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ]),
                            TableRow(children: [
                              Text('DELIVERY CHARGE (SGD)',
                                  textAlign: TextAlign.center),
                              Text('Free delivery [No cost applicable]',
                                  textAlign: TextAlign.center),
                              Text(
                                  new String.fromCharCodes(
                                          new Runes('\u0024')) +
                                      '7.00',
                                  textAlign: TextAlign.center),
                            ]),
                          ],
                        ),
                      ),
                    ])),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Express delivery fee: Additional '+new String.fromCharCodes(
                      new Runes('\u0024'))+'5.00 to the standard delivery fee irrespective of the order value.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Shipment and Tracking Details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'We will send you an email/SMS regarding the shipment of your order, as soon as the items are handed over to the delivery partner. These alerts will contain the tracking number and delivery details along with expected date of delivery. You may also check the same on our order status page or by logging in to the My Account section on our site. ',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Address Change Request',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Once an order is registered, you cannot make any alterations. However, address change requests may be accommodated within 24 hours of placing the order. You may Email at care@estreetmart.sg OR call +65 6978 1699 for your address change request',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Transit Risk',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Estreetmart ships all parcels as fully insured at no extra cost to customers. If our delivery partner fails to deliver, you do not suffer any loss. In-transit risk is all ours. But Estreetmart will not be responsible for lost and stolen packages or any full or partial damages to the package after being left at customer’s address.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Incorrect or Incomplete Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Please note that delivery partner will charge a penalty for incorrect shipping addresses, wherein the address and Pin code do not match. The customer will, without exception, bear the cost of any such penalties and/or fees, not Estreetmart. Please make sure your shipping address is correct.'+
                    '\nIn the event of a reshipment of the same order, customers will be responsible to pay re-shipping charges for the reshipment.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Delay in Shipping?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'The “Availability” as mentioned on our website against each item is an approximate count of days it would take to dispatch the order from our warehouse.'+
                    '\nIf, for any reason, there is going to be a delay in shipping because an item is ‘Out of Stock’ or if there is an unusual delay in filling an order, we will notify you by e-mail. We may also choose to deliver your order in multiple consignments (for multiple item orders with differing “Availability”). In some cases, we would offer to refund you for unfulfilled part of the order in case of our inability to resolve the order within a reasonable period.'+
              '\nAt times, due to situations beyond our control, delays may occur. Refund, Returns, Replacement & Exchange would not be entertained in case of such scenarios. However, benefits such as Store Credit would be provided on a case-to-case basis. These can be used for future shopping on the site.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Billing Address and Shipping Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Billing Address is the address where a customer gets his bills from the credit card company. \nShipping address is the address where the customer wants to receive their shipment.',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'What happens if my order is lost in transit?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'If a shipment is lost in transit, we will cross check for 15 days to locate the order with delivery partners and then reprocess/reship the order. If you have any question about our shipping policies, please email us on care@estreetmart.sg',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Last updated on 04th May 2021',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Copyright by estreetmart.',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          footer(),
        ],
      ),
    );
  }
}
