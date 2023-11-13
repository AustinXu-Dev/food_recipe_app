import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';

class todo extends StatelessWidget {
  final String ingredientName;
  final String ingredientAmount;

  const todo({super.key, required this.ingredientName, required this.ingredientAmount});

  @override
  Widget build (BuildContext context){
    return ListTile(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
      ),
      leading: Icon(Icons.check_box, color: AppColor.appBarColor,),
      title: Text(ingredientName),
      trailing: Text(
        ingredientAmount,
      ),
      
    );
  }
}