// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:flutter_application_1/screens/CartScreen/components/bill_detals_widget.dart';
import 'package:flutter_application_1/screens/CartScreen/components/widgets.dart';
import 'package:flutter_application_1/screens/CartScreen/components/address_widget.dart';
import 'package:flutter_application_1/screens/CartScreen/components/delivery_time_widget.dart';
import 'package:flutter_application_1/screens/CartScreen/components/instructions.widget.dart';

import 'package:sizer/sizer.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GlobalList(),
          Text(
            'Bill Details',
            style: TextStyle(fontWeight: bold2, fontSize: 16),
          ),
          ItemTotal(),
          SizedBox(
            height: 1.h,
          ),
          DeliveryTime(),
          Instructions(),
          Address(),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Container(
                width: 4.w,
                height: 2.h,
                decoration: BoxDecoration(
                    border: Border.all(color: ured),
                    borderRadius: BorderRadius.circular(2)),
              ),
              SizedBox(
                width: 1.w,
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 10, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'By accepting our ',
                      ),
                      TextSpan(
                        text: 'terms and conditions ',
                        style: TextStyle(
                            color: ured), // Red color for specific text
                      ),
                      TextSpan(
                        text:
                            'we are placing this order. Please check order details once.',
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, // Handle overflow
                ),
              ),
            ],
          ),
          Container(
            height: 20.h,
          )
        ]),
      ),
    );
  }
}
