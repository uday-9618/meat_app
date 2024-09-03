// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/images_constants.dart';
import 'package:sizer/sizer.dart';

class CategoriesScreenBody extends StatelessWidget {
  const CategoriesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
        ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 8.h,
            width: 10,
            child: Column(
              children: [
                Container(
                    height: 10.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink[50]),
                    child: Image.asset(Images.VEGETABLES)),
                Text("Vegetables")
              ],
            ),
          );
        },
      ),
    );
  }
}
