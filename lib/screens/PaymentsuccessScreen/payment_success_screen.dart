// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PaymentsuccessScreen/components/payment_success_screen_body.dart';

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 245, 247),
        title: Text("Payments Successfull"),
      ),
      body: PaymentSuccessScreenBody(),
    );
  }
}
