// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/screens/PaymentScreen/paymentsreen.dart';
import 'package:sizer/sizer.dart';

class GlobalList extends StatelessWidget {
  const GlobalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 0.5.h),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            color: uwhite,
            height: 12.h,
            child: Card(
              color: uwhite,
              elevation: 2,
              child: Row(
                children: [
                  Image.network(
                    'https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600nw-1727544364.jpg',
                    width: 14.w,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Apple'),
                      subtitle: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                uadd,
                                size: 17,
                                color: Color.fromARGB(255, 42, 219, 232),
                              ),
                              Text(
                                '99kg',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 42, 219, 232),
                                ),
                              ),
                              Icon(
                                urupee,
                                size: 10,
                                color: ugrey,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                  color: ugrey,
                                  fontSize: 10,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            left: 54,
                            right: 57,
                            top: 11,
                            child: Container(
                              height: 1,
                              color: ugrey,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Container(
                          width: 9.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: ured, width: 1),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: ured,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text('1'),
                        SizedBox(width: 2.w),
                        Container(
                          width: 9.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ured,
                            boxShadow: [
                              BoxShadow(
                                color: ured.withOpacity(0.2),
                                offset: Offset(0, -1),
                                blurRadius: 2,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Icon(
                            uadd,
                            color: uwhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BilldetailsWidget extends StatelessWidget {
  const BilldetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 12, 193, 165),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 25.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        "Item Total",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        size: 16,
                        color: Color.fromARGB(255, 93, 8, 8),
                      ),
                      Text(
                        "196",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Text(
                        "Delivery Fee",
                        style: TextStyle(fontSize: 17, color: Colors.grey[400]),
                      ),
                      Spacer(),
                      Text(
                        "Free",
                        style:
                            TextStyle(color: Color.fromARGB(255, 12, 193, 165)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[350],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Text(
                        "Packing charges",
                        style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                      ),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        size: 16,
                        color: Color.fromARGB(255, 93, 8, 8),
                      ),
                      Text(
                        "20.00",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Text(
                        "Taxes and Charges",
                        style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                      ),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        size: 16,
                        color: Color.fromARGB(255, 93, 8, 8),
                      ),
                      Text(
                        "20.00",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[350],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Text(
                        "To Pay",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w100),
                      ),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        size: 18,
                        color: Color.fromARGB(255, 93, 8, 8),
                      ),
                      Text(
                        "196",
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "You saved 20/- on this order!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class DeliverydateWidget extends StatelessWidget {
  const DeliverydateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 11.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "Delivery date",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 6),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://marybscakes.com/images/delivery.jpg"),
                    ),
                  ),
                  SizedBox(width: 10), // Spacing between image and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Thursday, 8th Aug 2024",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Delivery time: 9:00 AM - 11:00 AM",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InstructionsWidget extends StatelessWidget {
  const InstructionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "If any instructions (optional)",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 19),
                decoration: InputDecoration(
                  hintText: 'Write here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintStyle: TextStyle(
                    color: Colors.black12,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white, // Background color for visibility
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2, // Adds shadow for better visibility
        child: Padding(
          padding:
              const EdgeInsets.all(8.0), // Added padding to the Card content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Address",
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              SizedBox(height: 8), // Spacing between address title and content
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align items at the start
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor:
                        Colors.white, // Ensures visibility on white background
                    child: Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 93, 8, 8),
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 15), // Spacing between icon and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Sri Sai Nagar, Ayyappa Society, Madhapur",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        Text(
                          "Tel: 500081",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Nextwidget extends StatelessWidget {
  const Nextwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2 Items",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "₹196",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ubrown,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Row(
              children: [
                Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
