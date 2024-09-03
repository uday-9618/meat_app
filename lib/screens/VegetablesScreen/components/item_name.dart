// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class ItemNames extends StatelessWidget {
  const ItemNames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 28.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Center(
                child: Text(
              "Vegetables",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ))),
        SizedBox(
          width: 1.5.w,
        ),
        Container(
            width: 28.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red, width: 1.5),
            ),
            child: Center(
                child: Text(
              "Exotics",
              style: TextStyle(
                  color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
            ))),
        SizedBox(
          width: 1.5.w,
        ),
        Container(
            width: 28.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red, width: 1.5),
            ),
            child: Center(
                child: Text(
              "Flowers",
              style: TextStyle(
                  color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
            )))
      ],
    );
  }
}
