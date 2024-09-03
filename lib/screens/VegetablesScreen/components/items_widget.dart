// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/images_constants.dart';

import 'package:sizer/sizer.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          separatorBuilder: (context, index) => SizedBox(
                height: 0.5.h,
              ),
          itemCount: 2,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 12.h,
              child: Card(
                color: uwhite,
                elevation: 2,
                child: Row(
                  children: [
                    Image.asset(Images.BANANA),
                    Expanded(
                      child: ListTile(
                        title: Text('Banana'),
                        subtitle: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  urupee,
                                  size: 17,
                                  color: Color.fromARGB(255, 42, 219, 232),
                                ),
                                Text(
                                  '99kg',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 42, 219, 232),
                                  ),
                                ),
                                Icon(
                                  urupee,
                                  size: 10,
                                  color: ugrey,
                                ),
                                Text(
                                  '100',
                                  style: TextStyle(
                                    color: ugrey,
                                    fontSize: 10,
                                    decoration: TextDecoration
                                        .none, // Initially no line
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 54,
                              right: 70,
                              top:
                                  11, // Adjust this value based on your design needs
                              child: Container(
                                height: 1, // Line thickness
                                color: ugrey, // Line color
                                width:
                                    30, // Adjust width to cover both icon and text
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 19.w,
                        height: 4.5.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ured,
                          boxShadow: [
                            BoxShadow(
                              color: ured.withOpacity(0.3),
                              offset: Offset(0, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          'Add',
                          style: TextStyle(color: uwhite),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
