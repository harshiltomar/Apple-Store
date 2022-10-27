import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';
import 'catalog_header.dart';
import 'package:velocity_x/velocity_x.dart';

class AddtoCart extends StatefulWidget {
  final Item catalog;
  const AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddtoCart> createState() => AddtoCartState();
}

class AddtoCartState extends State<AddtoCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    late bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            isInCart = isInCart.toggle();
            final _catalog = CatalogModel();

            _cart.catalogue = _catalog;
            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
        child:
            isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
