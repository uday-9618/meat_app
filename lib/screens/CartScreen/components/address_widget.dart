// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:sizer/sizer.dart';

class Address extends StatelessWidget {
  const Address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: uwhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(color: ugrey, fontSize: 12),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align items to start
              children: [
                Container(
                  width: 9.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: ulightred,
                  ),
                  child: Icon(
                    Icons.home,
                    color: ured,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4), // Add space between texts
                      Text(
                        'Sri Sai Nagar, Ayyappa Society, Madhapur, Tel (500081)',
                        maxLines: 2,
                        overflow:
                            TextOverflow.ellipsis, // Add ellipsis for overflow
                        style: TextStyle(color: ugrey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
