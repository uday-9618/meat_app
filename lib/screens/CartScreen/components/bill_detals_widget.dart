// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:sizer/sizer.dart';

class ItemTotal extends StatelessWidget {
  const ItemTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 34.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: ulightgreen, // Adjust color as needed
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'You saved 20/- on this order!',
                  style: TextStyle(
                      color: uwhite, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0, // Adjust position as needed
          left: 0,
          right: 0,
          bottom: 50,
          child: Card(
            color: uwhite,
            margin: EdgeInsets.zero, // Ensure no margin is around the Card
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item Total',
                        style: TextStyle(fontWeight: medium, fontSize: 17),
                      ),
                      SizedBox(width: 57.w),
                      Icon(
                        urupee,
                        size: 15,
                        color: ured,
                      ),
                      Text(
                        '196',
                        style: TextStyle(fontWeight: medium, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: TextStyle(color: ugrey2, fontSize: 10),
                      ),
                      Text(
                        'Free',
                        style: TextStyle(color: ulightgreen),
                      ),
                    ],
                  ),
                  Divider(color: ulightgrey1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Packing charges',
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(width: 35.w),
                      Icon(
                        urupee,
                        size: 15,
                        color: ured,
                      ),
                      Text(
                        '20.00',
                        style: TextStyle(fontWeight: medium),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Taxes and Charges',
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(width: 30.w),
                      Icon(
                        urupee,
                        size: 15,
                        color: ured,
                      ),
                      Text(
                        '20.00',
                        style: TextStyle(fontWeight: medium),
                      ),
                    ],
                  ),
                  Divider(color: ulightgrey1),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'To Pay',
                        style: TextStyle(fontWeight: bold1),
                      ),
                      SizedBox(width: 56.w),
                      Icon(
                        urupee,
                        size: 15,
                        color: ured,
                      ),
                      Text(
                        '196',
                        style: TextStyle(fontWeight: bold1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
