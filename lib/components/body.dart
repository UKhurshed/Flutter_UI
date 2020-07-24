import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/components/search_box.dart';
import 'category_list.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          Expanded(
            child: ItemList(),
          ),
          DiscountCard(),
        ]
    );
  }
}






