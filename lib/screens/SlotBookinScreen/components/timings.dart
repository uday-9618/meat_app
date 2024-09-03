// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:sizer/sizer.dart';

class Timingss extends StatelessWidget {
  const Timingss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: uwhite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aug 10th',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Monday',
                      style: TextStyle(fontSize: 15, color: ulightgreen),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Today',
                      style: TextStyle(color: ugrey),
                    ),
                    Icon(
                      Icons.star,
                      color: ured,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(color: ulightgrey2),
            GridView.builder(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Prevent scrolling within GridView
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4, // Adjust as needed
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ured),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      '08:00AM - 09:00AM',
                      style: TextStyle(fontSize: 12, color: ured),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
