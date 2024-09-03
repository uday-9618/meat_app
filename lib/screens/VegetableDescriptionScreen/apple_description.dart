// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'components/apple_description_body.dart';

class Description extends StatelessWidget {
  const Description({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uwhite,
      appBar: AppBar(
        backgroundColor: uwhite,
        title: Text("Vegetables"),
      ),
      body: DescriptionBody(),
    );
  }
}
