import 'package:ezPalateHomePage/imports.dart';
import './widgets.dart' as widgets;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePageBody(),
    );
  }

  Widget homePageBody() {
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
        {
          "dishImage":
              "https://scx2.b-cdn.net/gfx/news/hires/2016/howcuttingdo.jpg",
          "dishName": "Doughnut",
          "timePeriod": "24th July",
          "dishRating": 3.0,
          "dishPrice": 6.20
        },
        {
          "dishImage":
              "https://scx2.b-cdn.net/gfx/news/hires/2016/howcuttingdo.jpg",
          "dishName": "Doughnut",
          "timePeriod": "24th July",
          "dishRating": 4.0,
          "dishPrice": 6.20
        },
      ]
    };
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          childAspectRatio: 0.8,
          crossAxisSpacing: 1.0,
        ),
        itemCount: dishes["dishesList"].length,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  widgets.imageView(
                      dishes["dishesList"][index]["dishImage"].toString()),
                  SizedBox(height: 5.0),
                  widgets.dishName(dishes["dishesList"][index]["dishName"]),
                  SizedBox(height: 3.5),
                  widgets.dishTime(dishes["dishesList"][index]["timePeriod"]),
                  SizedBox(height: 3.5),
                  widgets.dishRating(dishes["dishesList"][index]["dishRating"]),
                  SizedBox(height: 3.5),
                  widgets.dishPrice(dishes["dishesList"][index]["dishPrice"]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
