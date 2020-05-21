import 'package:flutter/material.dart';
import 'package:foodapp_ui/widgets/nearby_items.dart';

class NearbyItemsCard extends StatefulWidget {
  final NearByItems nearByItems;
  NearbyItemsCard({@required this.nearByItems});
  @override
  _NearbyItemsCardState createState() => _NearbyItemsCardState();
}

class _NearbyItemsCardState extends State<NearbyItemsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              widget.nearByItems.image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.nearByItems.text,
                style: TextStyle(
                    height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 6),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "4.3 ",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  Text(
                    "(28 reviews)",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
