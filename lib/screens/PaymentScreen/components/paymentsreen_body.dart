// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/images_constants.dart';
import 'package:flutter_application_1/screens/PaymentsuccessScreen/payment_success_screen.dart';
import 'package:sizer/sizer.dart';

class PaymentScreenBody extends StatefulWidget {
  const PaymentScreenBody({super.key});

  @override
  State<PaymentScreenBody> createState() => _PaymentScreenBodyState();
}

class _PaymentScreenBodyState extends State<PaymentScreenBody> {
  String? selectedMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Link your bank accounts, credit cards, and even reward cards in one place.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'Pay on Delivery',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Card(
              color: Colors.white,
              child: RadioListTile<String>(
                title: Text('Cash Payment'),
                value: 'Cash Payment',
                groupValue: selectedMethod,
                onChanged: (value) {
                  setState(() {
                    selectedMethod = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'UPI Payments',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Card(
              color: uwhite,
              child: RadioListTile<String>(
                title: Row(
                  children: [
                    Image.asset(
                      Images.GPAY,
                      scale: 1.6,
                    ),
                    SizedBox(width: 10),
                    Text('Google Pay'),
                  ],
                ),
                value: 'Google Pay',
                groupValue: selectedMethod,
                onChanged: (value) {
                  setState(() {
                    selectedMethod = value;
                  });
                },
              ),
            ),
            Card(
              color: Colors.white,
              child: RadioListTile<String>(
                title: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo4x8kSTmPUq4PFzl4HNT0gObFuEhivHOFYg&s",
                      height: 7.h,
                      width: 16.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text('Phone Pe'),
                  ],
                ),
                value: 'Phone Pe',
                groupValue: selectedMethod,
                onChanged: (value) {
                  setState(() {
                    selectedMethod = value;
                  });
                },
              ),
            ),
            Card(
              color: Colors.white,
              child: RadioListTile<String>(
                title: Row(
                  children: [
                    Image.network(
                      "https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/amazon-512.png",
                      height: 8.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text('Amazon Pay'),
                  ],
                ),
                value: 'Amazon Pay',
                groupValue: selectedMethod,
                onChanged: (value) {
                  setState(() {
                    selectedMethod = value;
                  });
                },
              ),
            ),
            Text(
              'Note: Do not go back while payment is processing',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PaymentSuccessScreen(),
                  ),
                );
              },
              child: Text(
                'Pay',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: ured, // Background color
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
