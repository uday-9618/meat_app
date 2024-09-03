// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class Searchbar_widget extends StatelessWidget {
  const Searchbar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.search),
        SizedBox(
          width: 2.w,
        ),
        Expanded(
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 19),
            decoration: InputDecoration(
              hintText: 'Search by Food,drinks,etc',
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
