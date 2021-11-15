import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class ColorSize extends StatelessWidget {
  const ColorSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Color",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Row(children: <Widget>[
                      ColorDot(color: product.color, isSlected: true),
                      ColorDot(color: Colors.red, isSlected: false),
                      ColorDot(color: Colors.brown, isSlected: false),
                    ])
                  ]),
            ),
            Expanded(
              child: RichText(
                  text:
                      TextSpan(style: TextStyle(color: kTextColor), children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold))
              ])),
            )
          ])
    ]);
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSlected;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSlected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      height: 24,
      width: 24,
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        border:
            Border.all(color: isSlected ? Colors.black : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
