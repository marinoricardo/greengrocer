// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
              child: Ink(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Text(
              '1 kg',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
              child: Ink(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
