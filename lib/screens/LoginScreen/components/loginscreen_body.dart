// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/globalbutton.dart';

import 'package:flutter_application_1/components/images_constants.dart';
import 'package:flutter_application_1/screens/LoginScreen/components/mobilenum_widget.dart';
import 'package:flutter_application_1/screens/OtpScreen/otpscreen.dart';
import 'package:sizer/sizer.dart';

class LoginscreenBody extends StatelessWidget {
  const LoginscreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset(Images.MEAT),
            ),
            SizedBox(height: 10.h),
            Text(
              "Mobile Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We need to register your mobile number before getting started!",
              style: TextStyle(color: Colors.grey[500], fontSize: 16),
            ),
            Row(
              children: [
                Mobilenumwidget(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Elevatedwidget(
              title: "Send OTP",
              ontap: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Otpscreen()));
              },
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Row(
                children: [
                  Text(
                    "By Login you to agree our all",
                  ),
                  Text(
                    "Terms&conditions",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
