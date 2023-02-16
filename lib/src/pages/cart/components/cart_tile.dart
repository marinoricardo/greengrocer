// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/pages/common_widgets/quantity_widget.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItemModel;
  final Function(CartItemModel) remove;
  const CartTile({Key? key, required this.cartItemModel, required this.remove})
      : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Image.asset(
          widget.cartItemModel.item.imgUrl,
          height: 60,
          width: 60,
        ),
        title: Text(
          widget.cartItemModel.item.itemName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          '${widget.cartItemModel.totalPrice()} Meticais',
          style: TextStyle(
            color: CustomColors.customSwatchColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: QuantityWidget(
          value: widget.cartItemModel.quantity,
          suffixText: widget.cartItemModel.item.unit,
          result: (int quantity) {
            setState(() {
              widget.cartItemModel.quantity = quantity;

              if (quantity == 0) {
                // remover item do carinho
                widget.remove(widget.cartItemModel);
              }
            });
          },
          isRemovable: widget.cartItemModel.quantity == 1 ? true : false,
        ),
      ),
    );
  }
}
