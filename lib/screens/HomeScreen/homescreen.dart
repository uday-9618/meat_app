// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/components/bottomnavbar.dart';
import 'package:flutter_application_1/components/colors.dart';
import 'package:sizer/sizer.dart';
import 'components/homescreen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(100.w, 20.h),
          child: SizedBox(
            height: 10.h,
            width: 20.w,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 26),
                child: ListTile(
                  title: Row(
                    children: [
                      Text("Madhapur,Hyderabad..."),
                      Icon(
                        Icons.expand_more,
                        color: Colors.red,
                      )
                    ],
                  ),
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  trailing: Icon(
                    Icons.notifications,
                    color: Appcolors.ugrey,
                  ),
                ),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: HomeScreenBody(),
      ),
      // bottomNavigationBar: const Navbar(

      // ),
    );
  }
}
