// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/components/images_constants.dart';
import 'package:flutter_application_1/screens/OrderHistoryListScreen/order_history_list.dart';

class OrderHistoryScreenBody extends StatelessWidget {
  const OrderHistoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.MAN),
            SizedBox(height: 20),
            Text(
              'There are no Orders to show!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Run for Fresh Fab Looks',
              style:
                  TextStyle(fontSize: 16, color: Color.fromARGB(255, 93, 8, 8)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ured,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () async {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OrderHistoryListSccreen()));
              },
              child: Text(
                'Add now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
