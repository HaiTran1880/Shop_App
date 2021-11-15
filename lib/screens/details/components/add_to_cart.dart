import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class Order extends StatelessWidget {
  const Order({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        height: 50,
        width: 58,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: product.color,
            )),
        child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/add_to_cart.svg",
              color: product.color,
            )),
      ),
      SizedBox(
        width: kDefaultPaddin,
      ),
      Expanded(
        child: SizedBox(
          height: 50,
          child: FlatButton(
            color: product.color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            onPressed: () {},
            child: Text(
              "BUY NOW",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
        ),
      )
    ]);
  }
}
