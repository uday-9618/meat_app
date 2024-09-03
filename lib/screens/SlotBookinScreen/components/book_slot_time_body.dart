// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/CartScreen/cart_page.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:flutter_application_1/screens/SlotBookinScreen/components/different_timings.dart';
import 'package:flutter_application_1/screens/SlotBookinScreen/components/timings.dart';

import 'package:sizer/sizer.dart';

class SlotTimeBody extends StatelessWidget {
  const SlotTimeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(children: [
            Timingss(),
            SizedBox(height: 2.h),
            DifferentTimings(),
            SizedBox(
              height: 2.h,
            ),
          ]),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 7.h,
        width: 90.w,
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyCart()));
            },
            backgroundColor: ured,
            child: Text(
              "Next",
              style: TextStyle(color: uwhite, fontSize: 18),
            )),
      ),
    );
  }
}
