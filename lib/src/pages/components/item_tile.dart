// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/pages/product/product_screen.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ProductScreen(
                    item: item,
                  );
                },
              ),
            );
          },
          child: Card(
            elevation: 0,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // image
                  Expanded(
                    child: Hero(
                      child: Image.asset(item.imgUrl),
                      tag: item.imgUrl,
                    ),
                  ),
                  //nome
                  Text(
                    item.itemName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // preco
                  Row(
                    children: [
                      Text(
                        'MZN ${item.price.toString()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                      Text(
                        '/${item.unit}',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 4,
            right: 4,
            child: GestureDetector(
              onTap: () {
                // print(item.itemName);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColors.customSwatchColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: 40,
                width: 35,
                child: Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ))
      ],
    );
  }
}
