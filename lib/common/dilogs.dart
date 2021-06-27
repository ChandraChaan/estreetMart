import 'dart:math';
import 'package:estreet/network/models.dart';
import 'package:estreet/network/network_file.dart';
import 'package:estreet/payment/strip-payment-service.dart';
import 'package:estreet/payment/stripMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOutDilog extends StatefulWidget {
  final List<cardItemsList> checkOutlist;

  CheckOutDilog({Key key, this.checkOutlist}) : super(key: key);

  @override
  _CheckOutDilogState createState() => _CheckOutDilogState();
}

class _CheckOutDilogState extends State<CheckOutDilog> {
  final mainRow = TextStyle(fontWeight: FontWeight.bold);

  double total = 0;

  @override
  void initState() {
    super.initState();
    StripeService.init();
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.checkOutlist.length; i++)
      total = total + double.parse(widget.checkOutlist[i].price);
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 1.1,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close_rounded, color: Colors.white)),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Image",
                                  style: mainRow,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Title",
                                  style: mainRow,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Price",
                                  style: mainRow,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Quantity",
                                  style: mainRow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: widget.checkOutlist.length,
                              itemBuilder: (BuildContext context, int i) {
                                return Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                12,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                12,
                                        child: new Image.network(
                                            'https://api.estreetmart.sg' +
                                                '${widget.checkOutlist[i].image}'
                                                    .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                          '${widget.checkOutlist[i].title}'),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                          '${widget.checkOutlist[i].price}'),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text('1'),
                                    ),
                                  ],
                                );
                              }),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Total",
                                  style: mainRow,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "${total.toString()}",
                                  style: mainRow,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(""),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(""),
                              ),
                              Expanded(
                                flex: 1,
                                child: TextButton(
                                    onPressed: () {
                                      print('proceed to pay');
                                      payMentStrip().payViaNewCard(
                                          context, "${total.toString()}");
                                    },
                                    child: Text("Proceed to pay")),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class infoPopup extends StatelessWidget {
  final String info;
  final String image;

  const infoPopup({Key key, this.info, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 1.1,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close_rounded, color: Colors.white)),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            child: Image.network(image),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 7,
                          child: Text(info.toString()),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class OtpPopUp extends StatefulWidget {
  List<cardItemsList> checkOutlist;

  OtpPopUp({Key key, this.checkOutlist}) : super(key: key);

  @override
  _OtpPopUpState createState() => _OtpPopUpState();
}

class _OtpPopUpState extends State<OtpPopUp> {
  bool genarateOTP = false;
  String notp = "";

  final emailcontro = TextEditingController(text: '');
  final phonecontro = TextEditingController(text: '');
  final datecontro = TextEditingController(text: '');
  final addresscontro = TextEditingController(text: '');
  final otpcontro = TextEditingController(text: '');
  final namecontro = TextEditingController(text: '');
  String deliverydate = 'Choose delivery date here';
  String deliverytime = ' and choose time';

  Future<void> _deliveryselectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2201));
    if (picked != null)
      setState(() {
        deliverydate = picked.toString();
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked_s = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child,
          );
        });

    if (picked_s != null)
      setState(() {
        deliverytime = picked_s.toString();
      });
  }

  // final postUserotpdataModel = postUserotpdataModel(email:);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 1.1,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close_rounded, color: Colors.white)),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextField(
                                    controller: emailcontro,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email',
                                        hintText: 'Sample@gmail.com'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    controller: phonecontro,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Phone',
                                        hintText: '123456'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    controller: namecontro,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Name',
                                        hintText: 'ABCD'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blueAccent)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text((deliverydate ==
                                                        'Choose delivery date here'
                                                    ? '${deliverydate}'
                                                    : '${deliverydate}'
                                                        .substring(0, 10)) +
                                                (deliverytime ==
                                                        ' and choose time'
                                                    ? ', ${deliverytime}'
                                                    : ', ${deliverytime}')),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: IconButton(
                                            onPressed: () {
                                              print('its  working');
                                              _deliveryselectDate(context);
                                            },
                                            icon: Icon(Icons.date_range),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: IconButton(
                                            onPressed: () {
                                              print('its  working');
                                              _selectTime(context);
                                            },
                                            icon:
                                                Icon(Icons.access_time_rounded),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  genarateOTP == true
                                      ? TextField(
                                          controller: otpcontro,
                                          decoration: InputDecoration(
                                              // labelText: 'Email',
                                              hintText: 'OTP'),
                                        )
                                      : FlatButton(
                                          onPressed: () {
                                            int min =
                                                1000; //min and max values act as your 6 digit range
                                            int max = 9999;
                                            var randomizer = new Random();
                                            var rNum = min +
                                                randomizer.nextInt(max - min);
                                            HttpserviceC().postUserotpdata(
                                              email: emailcontro.text,
                                              phone: phonecontro.text,
                                              name: namecontro.text,
                                              details: datecontro.text,
                                              address: addresscontro.text,
                                              otp: rNum,
                                            );
                                            setState(() {
                                              genarateOTP = true;
                                              notp = rNum.toString();
                                            });
                                            // print('this is otp ' + '${notp}');
                                          },
                                          child: Text('Verify email'),
                                          color: Colors.blue,
                                        ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    controller: addresscontro,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Address',
                                        hintText: 'Address'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      'Note: except Saturday and Sunday, Delivery Starts after 48 hrs of Order Placed, Delivery Time between 9 AM to 9 PM'),
                                ],
                              ),
                              // child: Text(info.toString()),
                            ),
                          ],
                        ),
                        FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              print(notp);
                              if (genarateOTP == true) {
                                if (notp != otpcontro.text) {
                                  ScaffoldMessenger.of(this.context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please enter valid OTP'),
                                  ));
                                } else if (notp == otpcontro.text) {
                                  Navigator.pop(context);
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (_) => CheckOutDilog(
                                      checkOutlist: widget.checkOutlist,
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(this.context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please enter OTP'),
                                  ));
                                }
                              } else {
                                ScaffoldMessenger.of(this.context)
                                    .showSnackBar(SnackBar(
                                  backgroundColor: Colors.red,
                                  behavior: SnackBarBehavior.floating,
                                  content: Text('Please verify you mail'),
                                ));
                              }
                            },
                            child: Text('Checkout'))
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
