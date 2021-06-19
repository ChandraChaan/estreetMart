import 'package:flutter/material.dart';

class header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size);
    return Container(
      height: 120,
      width: size.width,
      // color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 93,
          right: 95,
        ),
        child: size.width <800 ? Padding(
          padding: const EdgeInsets.only(top:28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image.asset('images/normal/logo.png'),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset(
                    'images/normal/whatsapp.png',
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+65 880 112 77',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ) :Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Image.asset('images/normal/logo.png'),
            Row(
              children: [
                new Image.asset(
                  'images/normal/whatsapp.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+65 880 112 77',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
