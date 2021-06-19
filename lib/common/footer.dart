import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: 52,
      width: size.width,
      child: size.width >800 ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width:38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'images/normal/Google-logo.png'),
                    ),
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(57)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width:38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'images/normal/Google-logo1.png'),
                    ),
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(57)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width:38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'images/normal/Google-logo2.png'),
                    ),
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(57)),
                  ),
                ),
              ],
            ),
          ),
          Text('All rights reserved @KSBS group 2021'),
          Container(
            // width: 54,
            // color: Colors.blue,
            child: Row(
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
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ) : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // width: 54,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width:38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'images/normal/Google-logo.png'),
                    ),
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(57)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width:38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'images/normal/Google-logo1.png'),
                    ),
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(57)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width:38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'images/normal/Google-logo2.png'),
                    ),
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(57)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Text('All rights reserved @KSBS group 2021'),

        ],
      ),
    );
  }
}
