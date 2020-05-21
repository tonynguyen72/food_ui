import 'package:flutter/material.dart';
import 'package:foodapp_ui/widgets/order_items.dart';

class OrderPage extends StatelessWidget {
  final List<OrderItems> orderItems = [
    OrderItems(
        number: "1",
        text: "Spaghetti",
        secondaryText: "200ml | 234 kcal",
        amount: "16.48"),
    OrderItems(
        number: "1",
        text: "Pizza & Pasta",
        secondaryText: "270ml | 134 kcal",
        amount: "13.57"),
    OrderItems(
        number: "1",
        text: "Sweet lemonade",
        secondaryText: "220ml | 304 kcal",
        amount: "12.48"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Order Summary",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 40),
                  ListView.builder(
                    itemCount: orderItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var orderItem = orderItems[index];
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    orderItem.number,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              //
                              SizedBox(width: 8),
                              Text("*"),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      orderItem.text,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      orderItem.secondaryText,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              ),
                              //?
                              Text(
                                orderItem.amount,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Divider(
                              thickness: 1.3,
                              color: Colors.grey.shade200,
                              height: 1),
                          SizedBox(height: 14),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                      Text(
                        "\$69.60",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$71.20",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Address",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("125 Le Loi Street,\nHue, Vietnam",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500,
                              height: 1.4)),
                      Text(
                        "Change",
                        style: TextStyle(fontSize: 14, color: Colors.amber),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Payment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        "images/mastercard.png",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "**** **** **** ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                            height: 1.4),
                      ),
                      Expanded(
                        child: Text(
                          "1420",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        "Change",
                        style: TextStyle(fontSize: 14, color: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //?
          SafeArea(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "SUBMIT ORDER",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
