// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Elevatedwidget extends StatelessWidget {
  const Elevatedwidget({
    super.key,
    this.title,
    this.ontap,
  });
  final title;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5,
            shadowColor: Colors.red[300],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.red,
            minimumSize: Size(90.w, 7.h)),
        onPressed: ontap,
        child: Text(
          title ?? "",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }
}
