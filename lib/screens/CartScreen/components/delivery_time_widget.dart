// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:sizer/sizer.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: uwhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery date',
              style: TextStyle(color: ugrey, fontSize: 12),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              children: [
                Container(
                  width: 11.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: ulightred,
                  ),
                  child: Icon(
                    Icons.local_shipping_outlined,
                    color: ured,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aug 14th',
                      style: TextStyle(fontSize: 12, fontWeight: bold1),
                    ),
                    Text(
                      '08:00PM - 12:00Am',
                      style: TextStyle(color: ured, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 28.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      ueditpen,
                      color: ured,
                      size: 13,
                    ),
                    Text(
                      'Friday',
                      style: TextStyle(fontSize: 12, fontWeight: regular),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
