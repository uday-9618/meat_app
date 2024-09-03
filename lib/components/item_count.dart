// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:sizer/sizer.dart';

class ItemCount extends StatelessWidget {
  const ItemCount({
    super.key,
    this.ontap,
    this.title,
  });
  final void Function()? ontap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11.h,
      width: 95.w,
      decoration: BoxDecoration(
        color: uwhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            offset: Offset(0, 1),
            color: ugrey,
          )
        ],
      ),
      child: FloatingActionButton(
        onPressed: ontap,
        backgroundColor: uwhite,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2 items",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹",
                            style: TextStyle(fontSize: 17, color: ured),
                          ),
                          Text(
                            "196",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ontap,
                      child: Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: ured,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: ured,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                title ?? "Next",
                                style: const TextStyle(
                                    color: uwhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Icon(
                                Icons.arrow_forward_rounded,
                                color: uwhite,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        elevation: 0, // Ensure no extra elevation is added
        // backgroundColor: Colors.transparent, // Ensure transparent background to show custom background
      ),
    );
  }
}
