import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/constants.dart';


class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Offers & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
                )
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors:
                    [Color(0xFFFF961F).withOpacity(0.3),
                      kPrimaryColor.withOpacity(0.7)]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
//                      child: Image.asset("assets/images/big_chili.png", width: 100, height: 80,),
                      child: SvgPicture.asset("assets/icons/pair_chili.svg", width: 110, height: 80,),
                    ),
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                    text: "Get Discount of \n",
                                    style: TextStyle(fontSize: 16)
                                ),
                                TextSpan(
                                    text: "30% \n",
                                    style: TextStyle(fontSize: 43,
                                        fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                    text: "at Paprika on your first order & Instant cashback",
                                    style: TextStyle(fontSize: 11)
                                ),
                              ]
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}