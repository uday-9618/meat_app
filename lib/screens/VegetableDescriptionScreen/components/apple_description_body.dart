// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/item_count.dart';
import 'package:flutter_application_1/screens/SlotBookinScreen/book_slot_time.dart';
import 'package:flutter_application_1/screens/VegetableDescriptionScreen/components/apple_images.dart';
import 'package:flutter_application_1/screens/VegetableDescriptionScreen/components/item_price.dart';

import 'package:sizer/sizer.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppleImage(),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Naturel Red Apple',
              style: TextStyle(fontWeight: medium, fontSize: 25),
            ),
            Text(
              '1kg,',
              style: TextStyle(color: ugrey2),
            ),
            SizedBox(
              height: 4.h,
            ),
            ItemPrice(),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: ulightgrey2,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'About Product',
              style: TextStyle(fontWeight: medium, fontSize: 20),
            ),
            Text(
              'Deacription Coriander Leaves Are Aromatic Green Leaves That Are Laegely Used To Flavour And Garnish Food. Helps Fight Food Poisoning And Lower Blood Sugar Levels And Relieve Urinay Tract Infections.',
              style: TextStyle(color: ugrey2),
            ),
            Text(
              '.Country Of Origin : India',
              style: TextStyle(color: ugrey2),
            ),
            Text(
              '.Shelf Life : 3Days',
              style: TextStyle(color: ugrey2),
            ),
            SizedBox(
              height: 3.h,
            ),
            ItemCount(
              ontap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Timings()));
              },
              title: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
