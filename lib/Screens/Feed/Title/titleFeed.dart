import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TitleFeed extends StatefulWidget {
  final List<Map<String,dynamic>> doc;

  const TitleFeed({Key key,this.doc}) : super(key: key);
  @override
  _TitleFeedState createState() => _TitleFeedState();
}

class _TitleFeedState extends State<TitleFeed> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: CarouselSlider(
            items: widget.doc.map<Widget>((doc)=> feed(doc: doc)).toList(),
            options: CarouselOptions(
                disableCenter: true,
                viewportFraction: 1.0,
                aspectRatio: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.doc.map((url) {
            int index = widget.doc.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? Colors.yellow : Colors.white),
            );
          }).toList(),
        )
      ],
    );
  }
  Widget feed({Map<String,dynamic> doc}){
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Image.network(doc["ImageUrl"],
                          fit: BoxFit.fill, width: 2000.0)),
                  Positioned(
                      top: 10,
                      child: Container(
                          color: Colors.orange,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0,
                                bottom: 5.0,
                                left: 9.0,
                                right: 9.0),
                            child: Text(
                              "42% OFF",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ))),
                  Positioned(
                      right: 0.0,
                      bottom: 10.0,
                      child: Container(
                          color: Colors.orange,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 3.0, right: 3.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 12.0,
                                ),
                                Text(
                                  "4,9",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ))),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                              "https://1.bp.blogspot.com/-kJ7yBFvSgAw/XcsioB5bhBI/AAAAAAABIyA/tXJwf-iZ8vEcb91OR41pBeFclgXXBUQdwCK4BGAYYCw/w1200-h630-p-k-no-nu/lojas-americanas-cristalina-goias.png",
                              width: 50,
                              height: 25.0,
                              fit: BoxFit.fill),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Lojas Americanas",
                              style: TextStyle(color: Colors.amber),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      doc["title"],
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "De R\$420,00",
                      style: TextStyle(
                          color: Colors.grey[700], fontFamily: "Italic"),
                    ),
                    Row(
                      children: [
                        Text(
                          "Por R\$244,00",
                          style: TextStyle(color: Colors.green),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0,
                                bottom: 5.0,
                                left: 9.0,
                                right: 9.0),
                            child: Text(
                              "Disponivel",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green[700],
                              borderRadius: BorderRadius.circular(20.0)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: Colors.amber,
                          size: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Text(
                            "1d 9h 30min 30segs",
                            style: TextStyle(
                                color: Colors.amber, fontSize: 8.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
