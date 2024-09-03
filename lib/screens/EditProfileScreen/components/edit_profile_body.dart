// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:flutter_application_1/screens/RegisterScreen/components/username_widget.dart';
import 'package:sizer/sizer.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 64,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://www.openbook.co/assets/images/home/Ellipse%20221.png",
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 7,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: ubrown,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 18,
                  ),
                ))
          ]),
        ),
        SizedBox(
          height: 4.h,
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29),
                    child: Container(
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
                              color: Colors.red,
                              size: 13,
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Usernamewidget(
                    cnthintxt: "Username",
                    cntnrwidt: 60.w,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 6.h,
          width: 84.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey)),
          child: TextField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.phone,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
                hintText: "Mobile Number",
                contentPadding: EdgeInsets.only(left: 4.w),
                border: InputBorder.none),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Usernamewidget(
          cnthintxt: "Email",
          cntnrwidt: 84.w,
        ),
        SizedBox(
          height: 35.h,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            shadowColor: Colors.red[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Color.fromARGB(255, 93, 8, 8),
            minimumSize: Size(50.w, 7.h),
          ),
          onPressed: () {},
          child: Text(
            "Update",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
