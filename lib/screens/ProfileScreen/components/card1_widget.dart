// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomnavbar.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/screens/EditProfileScreen/edit_profile.dart';

import 'package:sizer/sizer.dart';

class Card1widget extends StatelessWidget {
  const Card1widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: uwhite,
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Navbar(i: 1)));
            },
            child: ListTile(
              leading: Icon(Icons.history, color: ured),
              title: Text('Order History'),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Editaddressbottomsheetwidget(),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart, color: ured),
            title: Text('My Cart'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.share, color: ured),
            title: Text('Share App'),
          ),
        ],
      ),
    );
  }
}

class Editaddressbottomsheetwidget extends StatelessWidget {
  const Editaddressbottomsheetwidget({
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
                height: 40.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10), right: Radius.circular(10))),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "My Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Icon(
                              Icons.close,
                              color: ured,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.home, color: ured),
                        title: Text("Home"),
                        subtitle: Text(
                            "Flat no 103, Block - A, Alekhya homes, Madhapur, Hyderabad. 500081"),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 60.h,
                                        width: 100.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.horizontal(
                                                    left: Radius.circular(15),
                                                    right:
                                                        Radius.circular(15))),
                                        child: Column(
                                          children: [
                                            Card(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Edit  Address",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 50.w,
                                                    ),
                                                    Icon(
                                                      Icons.close,
                                                      color: ured,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color: ured,
                                                    ),
                                                    SizedBox(width: 8.0),
                                                    Text(
                                                      "Ayyappa Society, Madhapur, Hyd...",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(width: 8.0),
                                                    Text(
                                                      "Flat no/Block/Flat no",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Tag Location",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                OutlinedButton(
                                                    onPressed: () {},
                                                    child: Text("Home")),
                                                OutlinedButton(
                                                    onPressed: () {},
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            side: BorderSide(
                                                                width: 2,
                                                                color: ured)),
                                                    child: Text("Work")),
                                                OutlinedButton(
                                                    onPressed: () {},
                                                    child: Text("Hotel")),
                                                OutlinedButton(
                                                    onPressed: () {},
                                                    child: Text("Other"))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                elevation: 5,
                                                shadowColor: Colors.red[300],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                backgroundColor: ured,
                                                minimumSize: Size(84.w, 7.h),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                "Save address",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Icon(Icons.edit,
                                  color: Color.fromARGB(255, 93, 8, 8)),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            minimumSize: Size(84.w, 6.h),
                            side: BorderSide(width: 2, color: ured)),
                        child: Text(
                          "Add new address",
                          style: TextStyle(fontSize: 18, color: ured),
                        )),
                  ],
                ),
              );
            });
      },
      child: ListTile(
        leading: Icon(Icons.location_on, color: ured),
        title: Text('My Address'),
      ),
    );
  }
}

class Editprofilebuttonwidget extends StatelessWidget {
  const Editprofilebuttonwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ured, // Adjust color as needed
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EditProfile()));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.edit, color: Colors.white),
          SizedBox(width: 8),
          Text('Edit profile', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class Profilewidget extends StatelessWidget {
  const Profilewidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 64,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(
          "https://www.openbook.co/assets/images/home/Ellipse%20221.png",
        ),
      ),
    );
  }
}
