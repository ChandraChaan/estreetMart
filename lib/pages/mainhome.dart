import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final search = TextEditingController();
  bool allDress=true;
  bool Grocery=false;
  bool Electronics=false;
  bool Sports=false;
  bool WeddingAndEvents=false;
  bool GiftCards=false;
  bool ValueForTheDay=false;

  @override
  Widget build(BuildContext context) {
double width1 = MediaQuery.of(context).size.width;
double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width1,
          height: height1,
          child: Column(
            children: [
              Container(
                width: width1,
                height: (width1<850)?300:100,
                color: Color(0xFF077EB0),
                child: SingleChildScrollView(
                  scrollDirection: (width1<850)? Axis.vertical: Axis.horizontal,
                  child:
                  (width1<850)?
                  Container(
                    width: width1,
                    height: 200,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color:Colors.purple,
                            width: 312,
                            padding: EdgeInsets.only(left: 72, right: 82),
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'images/logo.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Container(
                                width: 281,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: TextFormField(
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          hintText: "Search Products",
                                          hintStyle: TextStyle(
                                              fontSize: 14, color: Color(0xFF077EB0)),
                                          border: InputBorder.none,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircleAvatar(
                                              radius: 5,
                                              child: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.cloud_download_outlined,
                                        color: Colors.white,
                                        size: 16,
                                      )),
                                  Container(
                                    width: 132,
                                    height: 20,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 16.85),
                                          child: Text(
                                            "Download app",
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14),
                                          ),
                                        ),
                                        Container(
                                          width: 0.5,
                                          height: 14,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.notifications_none,
                                          color: Colors.white,
                                          size: 16,
                                        )),
                                  ),
                                  Container(
                                    width: 121,
                                    height: 20,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 16.85),
                                          child: Text(
                                            "24/7 Support",
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14),
                                          ),
                                        ),
                                        // Spacer(),
                                        Container(
                                          width: 0.5,
                                          height: 14,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 31.2),
                                        child: Icon(
                                          Icons.notifications_active_outlined,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      )),
                                  Container(
                                    width: 113,
                                    height: 20,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4),
                                          child: Text(
                                            "Notification",
                                            maxLines: 1,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        // Spacer(),
                                        Container(
                                          width: 0.5,
                                          height: 14,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),

                              Container(
                                width: 100,
                                height: 35,
                                padding: EdgeInsets.only(left: 30),
                                child: RaisedButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: Text(
                                    "Log in",
                                    style: TextStyle(color: Color(0xFF077EB0),fontSize: 15,),maxLines: 1,
                                  ),
                                ),
                              ),
                              Container(
                                width: 0.5,
                                height: height1,
                                margin: EdgeInsets.only(left: 30),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16,),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(4),
                                        margin: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.compare_arrows,color: Color(0xFF077EB0),size: 15,)),
                                    Text("Compare",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(4),
                                        margin: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.compare_arrows,color: Colors.white,size: 15,)),
                                    Text("Wishlist",style: TextStyle(color: Colors.white,fontSize: 12),)

                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(4),
                                        margin: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.shopping_cart,color: Colors.white,size: 15,)),
                                    Text("Cart",style: TextStyle(color: Colors.white,fontSize: 12),)

                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ):
                  Container(
                    width: width1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4*3,
                          child: Container(
                            // width: 212,
                            // padding: EdgeInsets.only(left: 72, right: 82),
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'images/logo.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 4*3,
                            child:  Container()),
                        Expanded(
                          flex: 4*9,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 182,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            hintText: "Search Products",
                                            hintStyle: TextStyle(
                                                fontSize: 14, color: Color(0xFF077EB0)),
                                            border: InputBorder.none,
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: CircleAvatar(
                                                radius: 5,
                                                child: Icon(
                                                  Icons.search,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35.15),
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.cloud_download_outlined,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                    ),
                                    Container(
                                      width: 132,
                                      height: 20,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16.85),
                                            child: Text(
                                              "Download app",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 0.5,
                                            height: 14,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.notifications_none,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                    ),
                                    Container(
                                      width: 121,
                                      height: 20,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16.85),
                                            child: Text(
                                              "24/7 Support",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 14),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 0.5,
                                            height: 14,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 31.2),
                                          child: Icon(
                                            Icons.notifications_active_outlined,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        )),
                                    Container(
                                      width: 113,
                                      height: 20,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Text(
                                              "Notification",
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 0.5,
                                            height: 14,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                                Container(
                                  width: 100,
                                  height: 35,
                                  padding: EdgeInsets.only(left: 30),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.white,
                                    child: Text(
                                      "Log in",
                                      style: TextStyle(color: Color(0xFF077EB0),fontSize: 15,),maxLines: 1,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 0.5,
                                  height: height1,
                                  margin: EdgeInsets.only(left: 30),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4*2,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16,),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(4),
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle
                                          ),
                                          child: Icon(Icons.compare_arrows,color: Color(0xFF077EB0),size: 15,)),
                                      Text("Compare",style: TextStyle(color: Colors.white,fontSize: 12),)
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(4),
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle
                                          ),
                                          child: Icon(Icons.compare_arrows,color: Colors.white,size: 15,)),
                                      Text("Wishlist",style: TextStyle(color: Colors.white,fontSize: 12),)

                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(4),
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              shape: BoxShape.circle
                                          ),
                                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 15,)),
                                      Text("Cart",style: TextStyle(color: Colors.white,fontSize: 12),)

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: 1440,
                  height: 59,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    allDress=true;

                                  });
                                },
                                child: Text("All Dresses",style: TextStyle(fontWeight: FontWeight.w500),)),
                          ),
                          if(allDress==true)
                            BottomLine(context)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    Grocery=true;
                                  });
                                },
                                child: Text("Grocery",style: TextStyle(fontWeight: FontWeight.w500),)),
                          ),
                          if(Grocery==true)
                            BottomLine(context)

                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    Electronics=true;
                                  });
                                },
                                child: Text("Electronics",style: TextStyle(fontWeight: FontWeight.w500),)),
                          ),
                          if(Electronics==true)
                            BottomLine(context)

                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    Sports=true;
                                  });
                                },
                                child: Text("Sports",style: TextStyle(fontWeight: FontWeight.w500),)),
                          ),
                          if(Sports==true)
                            BottomLine(context)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    WeddingAndEvents=true;
                                  });
                                },
                                child: Text("Weddding & Events",style: TextStyle(fontWeight: FontWeight.w500),)),
                          ),
                          if(WeddingAndEvents==true)
                            BottomLine(context)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    GiftCards=true;
                                  });
                                },
                                child: Text("Gift Cards",style: TextStyle(fontWeight: FontWeight.w500),)),
                          ),
                          if(GiftCards==true)
                            BottomLine(context)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    ValueForTheDay=true;
                                  });
                                },
                                child: Text("Value for the day",style: TextStyle(fontWeight: FontWeight.w500,),)),
                          ),
                          if(ValueForTheDay==true)
                            BottomLine(context)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget BottomLine(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 46,
      height: 5,
      color: Color(0xFFBD1566),
    );
  }
}