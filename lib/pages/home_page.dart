import 'package:flutter/material.dart';
import 'package:foodapp_ui/component/cuisine_items_card.dart';
import 'package:foodapp_ui/component/home_title.dart';
import 'package:foodapp_ui/component/nearby_items_card.dart';
import 'package:foodapp_ui/component/popular_items_card.dart';
import 'package:foodapp_ui/widgets/cuisine_items.dart';
import 'package:foodapp_ui/widgets/nearby_items.dart';
import 'package:foodapp_ui/widgets/popular_items.dart';

class HomePage extends StatelessWidget {
  //?
  List<CuisineItems> cuisineItems = [
    CuisineItems(
        text: "Pizza & Pasta",
        secondaryText: "56 reviews",
        image: "images/pizza.jpg"),
    CuisineItems(
        text: "Hue Beef Noodle",
        secondaryText: "89 reviews",
        image: "images/huenoodle.jpg"),
    CuisineItems(
        text: "Da Nang Noodle",
        secondaryText: "78 reviews",
        image: "images/miquang.jpg"),
  ];
  List<PopularItems> popularItems = [
    PopularItems(
        text: "Madam Lan Restaurant &\nBrewery",
        image: "images/fooddisplay.jpg"),
    PopularItems(text: "Broken Rice Resto\nSaigon", image: "images/comtam.jpg"),
  ];
  List<NearByItems> nearbyItems = [
    NearByItems(
        text: "Little Italy Hue Pizza\nPasta Traditional",
        image: "images/pizza.jpg"),
    NearByItems(
        text: "Delicious Pho & Vienam Best\nTraditionaly",
        image: "images/pho.jpg"),
    NearByItems(
        text: "Delicious Hue Noodle \nTraditionaly-Tasted",
        image: "images/huenoodle.jpg"),
  ];

  //?
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(Icons.search,
                        size: 20, color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            HomeTitle(text: "Cuisine"),
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: cuisineItems.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return CuisineItemsCard(cuisineItems: cuisineItems[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            HomeTitle(text: 'Popular'),
            SizedBox(height: 16),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: popularItems.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return PopularItemsCard(popularItems: popularItems[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            HomeTitle(text: 'Nearby'),
            SizedBox(height: 16),
            ListView.builder(
              itemCount: nearbyItems.length,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(left: 16),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return NearbyItemsCard(nearByItems: nearbyItems[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
