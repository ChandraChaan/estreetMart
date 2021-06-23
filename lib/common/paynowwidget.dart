import 'package:flutter/material.dart';

class paynowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: size.width > 800
          ? Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 211,
                        // color: Colors.greenAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Pay using Pay Now',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              new String.fromCharCodes(new Runes('\u0024')) +
                                  '0.00',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'SGD \n Estreetmart',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                filled: true,
                                hintText: 'Enter your email Id here...',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Type here',
                                labelText: 'Enter Descreption',
                              ),
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 192,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          new Image.asset('images/normal/pay-now-code.jpg'),
                          Container(
                            width: 178,
                            child: OutlineButton(
                              child: Text(
                                'Click to Pay',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 1),
                              onPressed: () {
                                // print('ready to pay');
                              },
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            )
          : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top:8),
              child: Column(
                  children: [
                    Container(
                      width: 211,
                      // color: Colors.greenAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Pay using Pay Now',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            new String.fromCharCodes(new Runes('\u0024')) +
                                '0.00',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'SGD \n Estreetmart',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              filled: true,
                              hintText: 'Enter your email Id here...',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Type here',
                              labelText: 'Enter Descreption',
                            ),
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 192,
                      // height: 200,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          new Image.asset('images/normal/pay-now-code.jpg', height: 200,),
                          Container(
                            width: 178,
                            child: OutlineButton(
                              child: Text(
                                'Click to Pay',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 1),
                              onPressed: () {
                                // print('ready to pay');
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
            ),
          ),
    );
  }
}
