import 'dart:convert';

import 'package:estreet/network/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dilogs.dart';

class cardItems extends StatefulWidget {
  final String name;
  final String slug;

  cardItems({this.name, this.slug});

  @override
  _cardItemsState createState() => _cardItemsState();
}

class _cardItemsState extends State<cardItems> {
  List<cardItemsList> selectedList = [];

  Future<List<cardItemsList>> getListItemsdata() async {
    print('trying to get banner data');
    var url = Uri.parse('https://api.estreetmart.sg/products/?category='+'${widget.slug}');
    print(url);
    print('just entered to hit URL');
    final res = await http.get(url);
    print('done hitting url');
    print(res.statusCode);
    if (res.statusCode == 200) {
      print('Good');
      print(res.body);
      final parsed = json.decode(res.body).cast<Map<String, dynamic>>();
      selectedList = parsed.map<cardItemsList>((json) =>cardItemsList.fromJson(json)).toList();
      print('this is for testing');
      print(selectedList.length);
      return parsed.map<cardItemsList>((json) =>cardItemsList.fromJson(json)).toList();
    } else {
      print('Bad');
      return selectedList = [];
    }
  }


  @override
  void initState() {
    super.initState();
    getListItemsdata();
  }

  @override
  Widget build(BuildContext context) {
    getListItemsdata();
    print(selectedList.length);
    var size = MediaQuery.of(context).size;
    final double cardHeight = 570;
    return Padding(
      padding: size.width < 850
          ? const EdgeInsets.all(3)
          : const EdgeInsets.only(left: 75, right: 75, top: 50, bottom: 50),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: cardHeight,
        width: size.width,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 35, right: 35, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  '${widget.name}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
              Expanded(
                // height: 364,
                // color: Colors.blueGrey,
                child: GridView.count(
                  crossAxisCount: size.width < 850 ? 1 : 3,
                  childAspectRatio: 1.2,
                  padding: size.width < 850
                      ? const EdgeInsets.all(10)
                      : const EdgeInsets.all(20),
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 30.0,
                  children: [
                    for (var i = 0; i < selectedList.length; i++)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 14,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex:4,
                                        child: Text(
                                          '${selectedList[i].title}',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Expanded(
                                        flex:1,
                                        child: Checkbox(
                                            value: selectedList[i].ischeck,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedList[i].ischeck =
                                                    newValue;
                                              });
                                              if (newValue == true) {
                                                selectedList
                                                    .add(selectedList[i]);
                                              } else {
                                                selectedList
                                                    .remove(selectedList[i]);
                                              }
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: new Image.network(
                                            'https://api.estreetmart.sg'+'${selectedList[i].image}'
                                                .toString()),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        new String.fromCharCodes(
                                                new Runes('\u0024')) +
                                            '${selectedList[i].price}',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.green),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (_) => infoPopup(
                                                image: 'https://api.estreetmart.sg'+'${selectedList[i].image}',
                                                info: selectedList[i].description,
                                              ),
                                            );
                                          },
                                          icon: Icon(Icons.info)),
                                      Text(
                                        new String.fromCharCodes(
                                                new Runes('\u0024')) +
                                            '${selectedList[i].originalPrice}',
                                        style: TextStyle(
                                            color: Colors.pinkAccent,
                                            fontSize: 10,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => OtpPopUp(
                            checkOutlist: selectedList,
                          ),
                        );
                        print('count' + '${selectedList.length}');
                      },
                      child: Text('Proceed')))
            ],
          ),
        ),
      ),
    );
  }
}
