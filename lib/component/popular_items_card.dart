import 'package:flutter/material.dart';
import 'package:foodapp_ui/widgets/popular_items.dart';

class PopularItemsCard extends StatefulWidget {
  final PopularItems popularItems;
  PopularItemsCard({@required this.popularItems});
  @override
  _PopularItemsCardState createState() => _PopularItemsCardState();
}

class _PopularItemsCardState extends State<PopularItemsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              widget.popularItems.image,
              height: 120,
              width: 200,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          SizedBox(height: 10),
          Text(
            widget.popularItems.text,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Row(
            children: <Widget>[
              Icon(Icons.star, size: 12, color: Colors.amber),
              Icon(Icons.star, size: 12, color: Colors.amber),
              Icon(Icons.star, size: 12, color: Colors.amber),
              Icon(Icons.star, size: 12, color: Colors.amber),
              Icon(Icons.star, size: 12, color: Colors.grey.shade400),
              SizedBox(width: 4),
              Text("4.3 ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
              Text("(123 reviews)",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500)),
            ],
          ),
        ],
      ),
    );
  }
}
