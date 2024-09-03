// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

class DifferentTimings extends StatelessWidget {
  const DifferentTimings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Card(
          color: uwhite,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aug 11th',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Tuesday',
                      style: TextStyle(fontSize: 13, color: ulightgreen),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Tomorrow',
                      style: TextStyle(color: ugrey),
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: ured,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
