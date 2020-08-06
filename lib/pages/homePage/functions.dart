import 'package:ezPalateHomePage/imports.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> buildTemp(BuildContext context) {
  List<Widget> _arrayDish = [];
  Map<String, dynamic> dishes = {
    "dishesList": [
      {
        "dishImage":
            "https://scx2.b-cdn.net/gfx/news/hires/2016/howcuttingdo.jpg",
        "dishName": "Doughnut",
        "timePeriod": "24th July",
        "dishRating": 4.5,
        "dishPrice": 6.20
      },
    ]
  };

//storing schema length
  int len = dishes["dishesList"].length;

  for (var i = 0; i < len; i++) {
    Map<dynamic, dynamic> _itemInstance = dishes["dishesList"][i];
    _arrayDish.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 7.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 2.5,
                  child: Container(
                    height: 100.0,
                    width: 150.0,
                    child: Image.network(
                      _itemInstance["dishImage"],
                      height: 20.0,
                      width: 20.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    _itemInstance["dishName"].toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 4.5,
                ),
                Text(
                  _itemInstance["timePeriod"].toString(),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 4.5),
                RatingBar(
                  initialRating: 3,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemSize: 25.0,
                  itemPadding: EdgeInsets.symmetric(),
                  onRatingUpdate: null,
                ),
                Text(
                  "\$ " + _itemInstance["dishPrice"].toString(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  return _arrayDish;
}
