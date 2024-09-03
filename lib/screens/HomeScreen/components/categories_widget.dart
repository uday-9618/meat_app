import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/images_constants.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class Categories_Widget extends StatelessWidget {
  Categories_Widget({
    super.key,
  });
  final itemlname = ['Vegetables', 'Friuts', 'Milk&Eggs', 'Drinks'];

  // final List<String> imageURL = [
  //   "https://mtseedbank.in/wp-content/uploads/2023/03/vegetable.png",
  //   "https://cdn-icons-png.freepik.com/512/16779/16779235.png",
  //   "https://cdn-icons-png.flaticon.com/512/1509/1509470.png",
  //   "https://cdn-icons-png.freepik.com/512/16779/16779235.png"
  // ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 13.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.asset(Images.VEGETABLES),
                Text(itemlname[index])
              ],
            ),
          );
        },
      ),
    );
  }
}
