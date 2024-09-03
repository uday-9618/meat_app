import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class Otpwidget extends StatelessWidget {
  const Otpwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 6.h,
          width: 13.w,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6.h,
          width: 13.w,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(
          height: 6.h,
          width: 13.w,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(
          height: 6.h,
          width: 13.w,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        )
      ],
    );
  }
}
