import 'package:flutter/material.dart';
import 'package:flutter_ui/details/details_screen.dart';

import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              svgSrc: "assets/icons/burger_beer.svg",
              title: "Burger & Fries",
              shopName: "Paprika",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context){
                      return DetailsScreen();
                      },
                  ),
                );
              }
          ),
          ItemCard(
              svgSrc: "assets/icons/pizza.svg",
              title: "Pizza & Cola",
              shopName: "Paprika",
              press: () {}
          ),
          ItemCard(
              svgSrc: "assets/icons/burger_beer.svg",
              title: "Burger & Fries",
              shopName: "Paprika",
              press: () {}
          ),
        ],
      ),
    );
  }
}
