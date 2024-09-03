// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'components/loginscreen_body.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uwhite,
      appBar: AppBar(
        backgroundColor: uwhite,
      ),
      body: SingleChildScrollView(child: LoginscreenBody()),
    );
  }
}
