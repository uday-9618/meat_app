// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class Mobilenumwidget extends StatelessWidget {
  const Mobilenumwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 90.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
        ],
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: " Enter your Mobile Number",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
