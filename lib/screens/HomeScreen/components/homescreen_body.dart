// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/banners.dart';
import 'package:flutter_application_1/components/colors.dart';

import 'package:flutter_application_1/components/images_constants.dart';
import 'package:flutter_application_1/screens/CategoriesScreen/categories_screen.dart';
import 'package:flutter_application_1/screens/HomeScreen/components/categories_widget.dart';
import 'package:flutter_application_1/screens/HomeScreen/components/searchbar_widget.dart';
import 'package:flutter_application_1/screens/VegetablesScreen/vegetables_screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75.w,
                  height: 5.5.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Searchbar_widget(),
                  ),
                ),
                Container(
                    width: 14.w,
                    height: 5.5.h,
                    decoration: BoxDecoration(
                      color: Appcolors.ugrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 30,
                    ))
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CategoriesScreen()));
                  },
                  child: Text(
                    "See all>>",
                    style: TextStyle(color: Appcolors.ugrey, fontSize: 18),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Categories_Widget(),
            ),
            SizedBox(
              height: 1.h,
            ),
            Banner_widget(),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular items",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => VegetablesScreen()));
                  },
                  child: Text(
                    "See all>>",
                    style: TextStyle(color: Appcolors.ugrey, fontSize: 18),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Images.BROCOLLI),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            "Brocolli",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text("1kg",
                              style: TextStyle(color: Colors.grey[300])),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.red,
                            ),
                            Text(
                              "10",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                height: 3.h,
                                width: 6.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Appcolors.ugrey),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
