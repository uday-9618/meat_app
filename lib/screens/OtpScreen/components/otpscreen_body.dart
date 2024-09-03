// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/globalbutton.dart';

import 'package:flutter_application_1/components/images_constants.dart';
import 'package:flutter_application_1/screens/OtpScreen/components/otp_widget.dart';
import 'package:flutter_application_1/screens/RegisterScreen/registerscreen.dart';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Image.asset(Images.MEAT),
          ),
          Text(
            "OTP Verification ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Enter the verification code we just sent on your Mobile number.",
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Otpwidget(),
          SizedBox(
            height: 30,
          ),
          Elevatedwidget(
            title: "Verify",
            ontap: () async {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Registerscreen()));
            },
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 79),
            child: Row(
              children: [
                Text(
                  "Didn't received code?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Resend",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
