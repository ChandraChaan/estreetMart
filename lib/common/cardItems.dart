
import 'package:flutter/material.dart';

import 'cardItems_domain.dart';

class cardItems extends StatefulWidget {
  final String name;
  final List<cardItemsList> someList;

  cardItems({this.name, this.someList});

  @override
  _cardItemsState createState() => _cardItemsState();
}

class _cardItemsState extends State<cardItems> {


  @override
  void initState() {
    super.initState();
    // _initImages();
  }

  @override
  Widget build(BuildContext context) {
print(widget.someList.length);
    var size = MediaQuery.of(context).size;
    final double cardHeight = 570;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      height: cardHeight,
      width: size.width,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 35, right: 35, bottom: 101),
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
            Container(
              height: 364,
              // color: Colors.blueGrey,
              child: GridView.count(
                crossAxisCount: size.width < 850 ? 3 : 5,
                childAspectRatio: 1.2,
                padding: size.width < 850
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(20),
                mainAxisSpacing: 30.0,
                crossAxisSpacing: 30.0,
                children: [
                  for (var i = 0; i < widget.someList.length; i++)
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
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 14,
                                ),
                                child: Text(
                                  '${widget.someList[i].title}',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: new Image.asset('${widget.someList[i].image}'.toString().substring(7)),
                                    // height: 90,
                                    // width: 90,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      new String.fromCharCodes(
                                              new Runes('\u0024')) +
                                          '${widget.someList[i].price}',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      new String.fromCharCodes(
                                              new Runes('\u0024')) +
                                          '${widget.someList[i].originalPrice}',
                                      style: TextStyle(fontSize: 10),
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
            )
          ],
        ),
      ),
    );
  }
}
