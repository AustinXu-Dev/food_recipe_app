import 'package:flutter/material.dart';
import 'package:testing_project/model/menu.dart';
import 'package:testing_project/views/search_page.dart';

class DinnerScreen extends StatelessWidget {
  final List<MenuItem> dinnerMenu = [
    MenuItem("Senegalese Chicken", "assets/dinner/senegalese_chicken.jpg", 5.0),
    MenuItem("Teriyaki Chicken Rice", "assets/dinner/teriyaki_chicken_rice.jpg", 4.8),
    MenuItem("Butter Rice Kale", "assets/dinner/butter_rice_kale.jpg", 4.5),
    MenuItem("Curry Rice", "assets/dinner/curried_rice.jpg", 4.0),
    MenuItem("Myanmar Shallots Rice", "assets/dinner/rice_shallots.jpg", 4.8),
    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dinner Menu"),
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
      itemCount: dinnerMenu.length,
      itemBuilder: (context, index) {
        return _buildMenuItemCard(dinnerMenu[index]);
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