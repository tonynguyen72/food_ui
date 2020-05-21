import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food UI Vietnam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          title: Text('Food', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {}),
          ],
          backgroundColor: Colors.pinkAccent,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black87,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Material(
                    color: Color(0xfff42b51),
                    child: TabBar(
                      controller: _tabController,
                      unselectedLabelColor: Colors.white70,
                      isScrollable: true,
                      indicator: BoxDecoration(
                        color: Color(0xfff42b51),
                      ),
                      tabs: [
                        Tab(
                          text: "Popular Pizza",
                        ),
                        Tab(
                          text: "Noodles",
                        ),
                        Tab(
                          text: "Rice",
                        ),
                        Tab(
                          text: "Meat",
                        )
                      ],
                    ),
                  ),
                  PizzaCard(
                    img: 'images/pizza.jpg',
                    name: 'Pizza with Ginger',
                    des: 'Yummy there',
                    price: '26.9',
                  ),
                  PizzaCard(
                    img: 'images/huenoodle.jpg',
                    name: 'Hue Beef Noodle',
                    des: 'Tasty & Spicy',
                    price: '12.9',
                  ),
                  PizzaCard(
                    img: 'images/miquang.jpg',
                    name: 'Unique taste of life',
                    des: 'Different taste orient',
                    price: '13.5',
                  ),
                  PizzaCard(
                    img: 'images/comtam.jpg',
                    name: 'Broken Rice',
                    des: 'cultured-style food',
                    price: '30.0',
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.teal,
          backgroundColor: Color(0x00000000),
          buttonBackgroundColor: Colors.green[400],
          height: 60,
          items: [
            Icon(Icons.home, size: 30.0, color: Colors.white),
            Icon(Icons.chat_bubble, size: 30.0, color: Colors.white),
            Icon(Icons.shopping_cart, size: 40.0, color: Colors.white),
            Icon(Icons.directions_bike, size: 30.0, color: Colors.white),
            Icon(Icons.location_on, size: 30.0, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class PizzaCard extends StatelessWidget {
  PizzaCard({this.img, this.name, this.des, this.price});

  final String img;
  final String name;
  final String des;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => MyCart(),
          //   ),
          // ),
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
            height: 170.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(160, 10.0, 10.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        child: Text(
                          '$name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    '$des',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        child: Text(
                          '\$$price',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 90.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Color(0xfff42b51),
                            borderRadius: BorderRadius.circular(30.0)),
                        alignment: Alignment.center,
                        child: Text(
                          'Order now',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10.0,
          top: 5.0,
          bottom: 12,
          child: ClipRRect(
            child: Image(
              width: 150.0,
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
