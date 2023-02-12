// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/models/item_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.item}) : super(key: key);
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Column(
        children: [
          Expanded(child: Image.asset(item.imgUrl)),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.itemName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Text(
                    'MZN ${item.price.toString()}',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.customSwatchColor,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SingleChildScrollView(
                        child: Text(
                          item.description,
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('botao'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}