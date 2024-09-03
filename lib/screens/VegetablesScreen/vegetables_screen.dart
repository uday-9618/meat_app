// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'components/vegetables_screen_body.dart';

class VegetablesScreen extends StatelessWidget {
  VegetablesScreen({super.key});
  // Include key parameter in constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uwhite,
      appBar: AppBar(
        backgroundColor: uwhite,
        title: Text("Vegetables"),
      ),
      body: const VegetableItemsBody(),
    );
  }
}
