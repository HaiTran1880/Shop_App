import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class ProductConten extends StatelessWidget {
  const ProductConten({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Aristocratic Hand Bag",
                style: TextStyle(fontSize: 15, color: Colors.white)),
            Text(product.title,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white)),
            const SizedBox(
              height: kDefaultPaddin,
            ),
            Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ]),
                ),
                const SizedBox(
                  width: kDefaultPaddin,
                ),
                Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              ],
            )
          ]),
    );
  }
}
