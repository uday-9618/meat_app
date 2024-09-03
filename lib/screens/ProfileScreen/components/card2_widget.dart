// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:sizer/sizer.dart';

class Card2_Widget extends StatelessWidget {
  const Card2_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: uwhite,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.support_agent,
              color: ured,
            ),
            title: Text('Support / Chat with us'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip, color: ured),
            title: Text('Privacy & Policy'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.description, color: ured),
            title: Text('Terms & Conditions'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          LogoutbottomsheetWidget(),
        ],
      ),
    );
  }
}

class LogoutbottomsheetWidget extends StatelessWidget {
  const LogoutbottomsheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 23.h,
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.h), // Add space for the icon
                        Text(
                          'Log out',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Do you want to log out?',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: ubrown),
                              ),
                              child: Center(
                                child: Text(
                                  'Yes ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: ured,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              width: 40.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ubrown),
                              child: Center(
                                child: Text(
                                  'No ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: uwhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      top: -36, // Move the icon slightly outside the top
                      left: 48.w - 15, // Center horizontally with offset
                      child: CircleAvatar(
                        backgroundColor: ured,
                        radius: 18, // Larger radius to fit the icon
                        child: IconButton(
                          icon: Center(
                            child: Icon(
                              Icons.logout_outlined,
                              size: 22,
                              color: uwhite,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context); // Close the bottom sheet
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
      child: ListTile(
        leading: Icon(
          Icons.logout,
          color: ured,
        ),
        title: Text('Logout'),
      ),
    );
  }
}
