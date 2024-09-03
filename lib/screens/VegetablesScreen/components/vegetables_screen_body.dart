// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/item_count.dart';
import 'package:flutter_application_1/screens/CartScreen/components/widgets.dart';
import 'package:flutter_application_1/screens/VegetableDescriptionScreen/apple_description.dart';

import 'package:flutter_application_1/screens/VegetablesScreen/components/item_name.dart';
import 'package:flutter_application_1/screens/VegetablesScreen/components/items_widget.dart';

import 'package:sizer/sizer.dart';

class VegetableItemsBody extends StatelessWidget {
  const VegetableItemsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15),
        child: Column(
          children: [
            ItemNames(),
            SizedBox(
              height: 3.h,
            ),
            GlobalList(),
            SizedBox(
              height: 1.h,
            ),
            ItemsWidget(),
            SizedBox(
              height: 17.h,
            ),
            ItemCount(
              ontap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Description()));
              },
              title: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
