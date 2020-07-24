import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(title: 'Combo Meal', isActive: true, press: () {},),
          CategoryItem(title: 'Chicken', press: () {},),
          CategoryItem(title: 'Pizza',press: () {},),
          CategoryItem(title: "Burger's",press: () {},),
          CategoryItem(title: "Rolls",press: () {},),
        ],
      ),
    );
  }
}