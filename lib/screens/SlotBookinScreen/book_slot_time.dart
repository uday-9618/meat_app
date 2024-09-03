// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'components/book_slot_time_body.dart';

class Timings extends StatelessWidget {
  const Timings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uwhite,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 245, 247),
        title: Text("Book time slot"),
      ),
      body: SlotTimeBody(),
    );
  }
}
