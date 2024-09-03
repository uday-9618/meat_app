// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Instructions extends StatelessWidget {
  const Instructions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'If any instruction(optional)',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              width: 93.w,
              height: 6.h,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'write here',
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintStyle: TextStyle(
                    color: Colors.grey, // Change hint text color
                    fontSize: 13.0, // Change hint text size
                    fontWeight: FontWeight.bold, // Change hint text weight
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
