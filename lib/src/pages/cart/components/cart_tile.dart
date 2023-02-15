// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/cart_item_model.dart';

class CartTile extends StatelessWidget {
  final CartItemModel cartItemModel;
  const CartTile({Key? key, required this.cartItemModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cartItemModel.item.imgUrl,
          height: 60,
          width: 60,
        ),
        title: Text(
          cartItemModel.item.itemName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
