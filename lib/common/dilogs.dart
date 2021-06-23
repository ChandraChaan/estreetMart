import 'dart:math';
import 'package:estreet/network/models.dart';
import 'package:estreet/network/network_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOutDilog extends StatelessWidget {
  final List<cardItemsList> checkOutlist;

  CheckOutDilog({Key key, this.checkOutlist}) : super(key: key);

  final mainRow = TextStyle(fontWeight: FontWeight.bold);
  int total = 0;

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < checkOutlist.length; i++)
      total = total + int.parse(checkOutlist[i].price);
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
                              itemCount: checkOutlist.length,
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
                                            '${checkOutlist[i].image}'
                                                .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text('${checkOutlist[i].title}'),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text('${checkOutlist[i].price}'),
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
  final List<cardItemsList> checkOutlist;

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
                                  TextField(
                                    controller: datecontro,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText:
                                            'Preferred delivery date and time',
                                        hintText: 'DD-MM-YYYY,HH-MM'),
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
                              if (genarateOTP == true) {
                                if (notp != otpcontro.text) {
                                  ScaffoldMessenger.of(this.context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please enter valid OTP'),
                                  ));
                                } else if (notp == otpcontro.text) {
                                  // print(widget.checkOutlist.length);
                                  // showDialog(
                                  //   barrierDismissible: false,
                                  //   context: context,
                                  //   builder: (_) => CheckOutDilog(
                                  //     checkOutlist: widget.checkOutlist,
                                  //   ),
                                  // );
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
