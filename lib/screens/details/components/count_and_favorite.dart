import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SizedBox(
        height: 32,
        width: 40,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onPressed: () {
            setState(() {
              if (count > 1) {
                count--;
              }
            });
          },
          child: Icon(Icons.remove),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Text(
          count < 10 ? "0" + count.toString() : count.toString(),
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(
        height: 32,
        width: 40,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    ]);
  }
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool love = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          love = !love;
        });
      },
      child: Container(
        height: 40,
        padding: EdgeInsets.zero,
        width: 40,
        child: Icon(Icons.favorite, color: love ? Colors.white : Colors.grey),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: love ? Colors.red : Colors.transparent),
      ),
    );
  }
}
