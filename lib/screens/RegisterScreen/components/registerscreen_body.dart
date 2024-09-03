// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/globalbutton.dart';

import 'package:flutter_application_1/components/images_constants.dart';
import 'package:flutter_application_1/screens/LocatonScreen/locationscreen.dart';
import 'package:flutter_application_1/screens/RegisterScreen/components/username_widget.dart';

import 'package:sizer/sizer.dart';

class RegisterscreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset(Images.MEAT),
            ),
            Text(
              "Hello! Register to get started ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                    height: 6.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        color: Colors.grey[200]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Ms",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: ured,
                          size: 13,
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                Usernamewidget(
                  cnthintxt: "Username",
                  cntnrwidt: 60.w,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Usernamewidget(
              cnthintxt: "Email",
              cntnrwidt: 84.w,
            ),
            SizedBox(
              height: 20,
            ),
            Elevatedwidget(
              title: "Register",
              ontap: () async {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LocationScreen()));
              },
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                "By Register,you agree to our all",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text(
                "Terms&conditions",
                style: TextStyle(color: Colors.red, fontSize: 16),
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
