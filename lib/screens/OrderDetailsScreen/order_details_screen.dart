// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/order_details_screen_body.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 245, 247),
        title: Text("Order Details"),
      ),
      body: SingleChildScrollView(child: OrderDetailsBody()),
    );
  }
}
