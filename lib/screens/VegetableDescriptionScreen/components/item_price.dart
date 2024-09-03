// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:sizer/sizer.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(urupee),

        Text(
          '499',
          style: TextStyle(fontWeight: medium, fontSize: 20),
        ),
        SizedBox(width: 50.w),
        Container(
          width: 9.w,
          height: 4.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ured, width: 1)),
          child: Icon(
            Icons.remove,
            color: ured,
          ),
        ),
        SizedBox(width: 2.w), // Spacing between icon and text
        Text('1'),
        SizedBox(width: 2.w),
        Container(
          width: 9.w,
          height: 4.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ured,
            boxShadow: [
              BoxShadow(
                color: ured.withOpacity(0.2), // Shadow color
                offset: Offset(0, -1), // Offset of the shadow
                blurRadius: 2, // Blur radius
                spreadRadius: 2,
              ),
            ],
          ),
          child: Icon(
            uadd,
            color: uwhite,
          ),
        ),
      ],
    );
  }
}
