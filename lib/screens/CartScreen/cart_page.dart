// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_count.dart';
import 'package:flutter_application_1/screens/PaymentScreen/paymentsreen.dart';

import 'components/cart_page_body.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 210, 245, 247),
          title: Text("My Cart"),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back))),
      body: CartPageBody(),
      floatingActionButton: ItemCount(
        ontap: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PaymentScreen()));
        },
        title: 'Place order',
      ),
    );
    
  }
}
