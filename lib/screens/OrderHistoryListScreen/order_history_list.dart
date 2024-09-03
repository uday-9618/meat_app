// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/order_history_list_body.dart';

class OrderHistoryListSccreen extends StatelessWidget {
  const OrderHistoryListSccreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 245, 247),
        title: Text("Order History List"),
      ),
      body: OrderHistoryListScreenBody(),
    );
  }
}
