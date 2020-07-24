import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/details/title_price_rating.dart';

import 'order_button.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
      ),
      child: Column(
        children: [
          shopName(name: "Paprika"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            price: 15,
            rating: 4,
            onRatingChanged: (value) {},
          ),
          Text("Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
          style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: size.height*0.1,
          ),
          OrderButton(
            size: size,
            press: () {
          },),
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
          children: [

            Icon(
              Icons.location_on,
              color: ksecondaryColor,
            ),
            SizedBox(width: 10),
            Text(name)
          ],
        );
  }
}


