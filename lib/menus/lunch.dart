import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/model/menu.dart';
import 'package:testing_project/views/search_page.dart';

class LunchScreen extends StatelessWidget {
  final List<MenuItem> lunchMenu = [
    MenuItem("Chicken Katsu", "assets/lunch/chicken_katsu.jpg", 4.5),
    MenuItem("Crock Pot Chili", "assets/lunch/crock_pot_chili.jpg", 4.0),
    MenuItem("Fried Chicken Noodle", "assets/lunch/fried_chicken_noodle.jpg", 4.8),
    MenuItem("Indonesian Fried Rice", "assets/lunch/indo_fried_rice.jpg", 5.0),
    MenuItem("Indian Puri", "assets/lunch/puri.jpg", 4.8),
    MenuItem("Salmon Rice", "assets/lunch/salmon_rice.jpg", 4.8),
    MenuItem("Shrimp Rice Spicy Mayo", "assets/lunch/shrimp_rice_mayo.jpg", 5.0),
    MenuItem("Tomato Rice", "assets/lunch/tomato_rice.jpg", 4.8),
    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lunch Menu"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>SearchPage())
              );
              // Handle search button action
            },
          ),
        ],
        backgroundColor: AppColor.appBarColor,
      ),
      body: Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),child: _buildMenuList()),
    );
  }

  Widget _buildMenuList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: lunchMenu.length,
      itemBuilder: (context, index) {
        return _buildMenuItemCard(lunchMenu[index]);
      },
    );
  }

  Widget _buildMenuItemCard(MenuItem menuItem) {
    return Card(
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuItem.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuItem.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text(menuItem.rating.toString()),
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