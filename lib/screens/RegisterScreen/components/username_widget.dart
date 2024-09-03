// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Usernamewidget extends StatelessWidget {
  const Usernamewidget({
    super.key,
    this.cnthintxt,
    this.cntnrwidt,
  });

  final String? cnthintxt; // Explicitly declare the type as String?
  final double? cntnrwidt; // Explicitly declare the type as double?

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: cntnrwidt ?? 100.0, // Provide a default value if cntnrwidt is null
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        textAlign: TextAlign.start,
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          hintText:
              cnthintxt ?? "", // Provide a default value if cnthintxt is null
          contentPadding: EdgeInsets.only(left: 4.w),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
