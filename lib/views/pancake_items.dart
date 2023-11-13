import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testing_project/menus/pancake_detail.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/model/save_item.dart';

class PancakeRecipes extends StatelessWidget {
  final List<SavedItem> savedList = [
    SavedItem("Pancake", "assets/dessert/pancake_detail.jpg", 5.0),
    // SavedItem("Fried Chicken Noodle", "assets/lunch/fried_chicken_noodle.jpg", 4.8),
    // SavedItem("Indian Puri", "assets/lunch/puri.jpg", 4.8),
    // Add more saved items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pancake List"),
        backgroundColor: AppColor.appBarColor,
      ),
      body: _buildSavedItemList(),
    );
  }

  Widget _buildSavedItemList() {
    return ListView.builder(
      itemCount: savedList.length,
      itemBuilder: (context, index) {
        return _buildSavedItemCard(savedList[index], context);
      },
    );
  }

  Widget _buildSavedItemCard(SavedItem savedItem, BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Card(
        elevation: 2.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PancakeDetail()))
              },
              child: Container(
              height: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(savedItem.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        savedItem.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(), // Add Spacer to push the rating text to the right
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(savedItem.rating.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}