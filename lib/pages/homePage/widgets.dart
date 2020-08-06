import 'package:ezPalateHomePage/imports.dart';

import '../homePage/functions.dart' as functions;

Widget homeDishCard({BuildContext context}) {
  return Container(
    child: Column(
      children: functions.buildTemp(context),
    ),
  );
}

// holds the image view for the card
Widget imageView(String url) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    height: 120.0,
    child: Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      margin: EdgeInsets.all(0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

// holds the dish title
Widget dishName(String dishName) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Text(
      dishName,
      maxLines: 2,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget dishTime(String dishTime) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Text(
      dishTime,
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.grey[600],
      ),
    ),
  );
}

Widget dishRating(double rating) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: RatingBar(
      initialRating: rating,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemSize: 25.0,
      itemPadding: EdgeInsets.symmetric(),
      onRatingUpdate: null,
    ),
  );
}

Widget dishPrice(double price) {
  return Container(
    child: Text(
      "\$ " + price.toString(),
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    ),
  );
}
