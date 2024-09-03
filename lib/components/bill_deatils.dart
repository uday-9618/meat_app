// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';

import 'package:flutter_application_1/screens/PaymentScreen/paymentsreen.dart';
import 'package:sizer/sizer.dart';

class Billdetailswidget extends StatelessWidget {
  const Billdetailswidget({
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
          Stack(
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
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                      child: Row(
                        children: [
                          Text(
                            "Item Total",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 53.w,
                          ),
                          Icon(
                            urupee,
                            size: 16,
                            color: Color.fromARGB(255, 93, 8, 8),
                          ),
                          Text(
                            "196",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            "Delivery Fee",
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 51.w,
                          ),
                          Text(
                            "Free",
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 193, 165)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
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
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey[600]),
                          ),
                          SizedBox(
                            width: 40.w,
                          ),
                          Icon(
                            urupee,
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
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey[600]),
                          ),
                          SizedBox(
                            width: 34.5.w,
                          ),
                          Icon(
                            urupee,
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
                      padding: const EdgeInsets.all(9.0),
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
                          SizedBox(
                            width: 56.5.w,
                          ),
                          Icon(
                            urupee,
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 9.8),
            child: Text(
              "You saved 20/- on this order!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class Deliverydatewidget extends StatelessWidget {
  const Deliverydatewidget({
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
              Row(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://marybscakes.com/images/delivery.jpg"),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Aug 14th",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 45.w,
                        ),
                        Icon(
                          Icons.border_color_outlined,
                          color: Color.fromARGB(255, 93, 8, 8),
                          size: 20,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "08:00PM-12:00AM",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 93, 8, 8)),
                          ),
                        ),
                        SizedBox(
                          width: 27.w,
                        ),
                        Text("Friday")
                      ],
                    )
                  ],
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class Instructionswidget extends StatelessWidget {
  const Instructionswidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 90.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                "If any instructions(optional)",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 5.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 19),
                      decoration: InputDecoration(
                        hintText: ' Write here',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.black12,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Addresswidget extends StatelessWidget {
  const Addresswidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      width: 90.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                "Address",
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: CircleAvatar(
                        radius: 20,
                        child: Icon(
                          Icons.home,
                          color: Color.fromARGB(255, 93, 8, 8),
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Sri Sai Nagar,Ayyappa Society,Madhapur,)",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                      Text(
                        "tel(500081))",
                        style: TextStyle(color: Colors.grey[400]),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Checkboxwidget extends StatelessWidget {
  const Checkboxwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_box_outline_blank_outlined,
          color: Color.fromARGB(255, 93, 8, 8),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("By accepting our"),
                  Text(
                    "terms and conditions",
                    style: TextStyle(color: Color.fromARGB(255, 93, 8, 8)),
                  ),
                  Text("we are placing this")
                ],
              ),
              Row(
                children: [Text("order.please check order details once")],
              )
            ],
          ),
        )
      ],
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
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
              backgroundColor: const Color(0xFF8D004B),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              textStyle: const TextStyle(
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