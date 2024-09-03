// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/categories_screen_body.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 245, 247),
        title: Text("Categories"),
      ),
      body: CategoriesScreenBody(),
    );
  }
}
