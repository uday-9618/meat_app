import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/images_constants.dart';




class Banner_widget extends StatelessWidget {
  const Banner_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(Images.BANNER)),
          );
        },
      ),
    );
  }
}
