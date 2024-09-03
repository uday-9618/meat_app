// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/globalbutton.dart';
import 'package:flutter_application_1/screens/OrderDetailsScreen/order_details_screen.dart';
import 'package:sizer/sizer.dart';

class OrderHistoryListScreenBody extends StatelessWidget {
  const OrderHistoryListScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search by category',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 47.h,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Filter by',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    IconButton(onPressed: () {
                                      Navigator.pop(context);

                                    },              icon:  Icon(Icons.close, color: ured)),
                                  ],
                                ),
                                Divider(color: ulightgrey1),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Status',
                                  style: TextStyle(color: ugrey, fontSize: 12),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40.w,
                                      height: 5.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: ured),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Waiting for pickup',
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
                                      width: 30.w,
                                      height: 5.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ured),
                                      child: Center(
                                        child: Text(
                                          'Ongoing',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: uwhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 30.w,
                                      height: 5.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: ured),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Cancelled',
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
                                      width: 30.w,
                                      height: 5.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(color: ured)),
                                      child: Center(
                                        child: Text(
                                          'Deliverd ',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: ured,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Elevatedwidget(
                                    title: "Apply Filter",
                                    ontap: () async {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => LocationScreenPage()));
                                    }),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                      height: 6.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        (Icons.filter_list),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrderDetails(),
                    ));
                  },
                  child: _buildOrderItem(
                    "Order ID #0012345",
                    "12 Items",
                    "Mon, 07 Aug 2023",
                    "Delivered",
                  ),
                ),
                _buildOrderItem(
                  "Order ID #0012346",
                  "5 Items",
                  "Tue, 08 Aug 2023",
                  "Delivered",
                ),
                _buildOrderItem(
                  "Order ID #0012347",
                  "8 Items",
                  "Wed, 09 Aug 2023",
                  "Ongoing",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(
    String orderId,
    String itemCount,
    String date,
    String status,
  ) {
    return Card(
      color: uwhite,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 4.h,
              width: 8.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green,
              ),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderId,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(itemCount, style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: status == "Delivered" ? Colors.green : Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text(date, style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
