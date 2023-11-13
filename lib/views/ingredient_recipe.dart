import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColor.appBarColor,      
    );
  }
}