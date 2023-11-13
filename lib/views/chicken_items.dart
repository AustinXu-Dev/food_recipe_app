import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/model/save_item.dart';

class ChickenRecipes extends StatelessWidget {
  final List<SavedItem> savedList = [
    SavedItem("Chicken Katsu", "assets/lunch/chicken_katsu.jpg", 4.5),
    SavedItem("Fried Chicken Noodle", "assets/lunch/fried_chicken_noodle.jpg", 4.8),
    SavedItem("Chicken Honey", "assets/images/chicken_honey.jpg", 4.8),
    SavedItem("Grill Chicken", "assets/images/grill_chicken.jpg", 4.2),
    SavedItem("Chicken Cabbage", "assets/images/chicken_cabbage.jpg", 4.3)
    // Add more saved items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chicken List"),
        backgroundColor: AppColor.appBarColor,
      ),
      body: _buildSavedItemList(),
    );
  }

  Widget _buildSavedItemList() {
    return ListView.builder(
      itemCount: savedList.length,
      itemBuilder: (context, index) {
        return _buildSavedItemCard(savedList[index]);
      },
    );
  }

  Widget _buildSavedItemCard(SavedItem savedItem) {
    return Card(
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(savedItem.imagePath),
                fit: BoxFit.cover,
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
    );
  }
}