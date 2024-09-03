import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/images_constants.dart';
import 'package:sizer/sizer.dart';

class AppleImage extends StatelessWidget {
  const AppleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 93.w,
            child: Card(
              color: uwhite,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(Images.APPLE_CUT, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
