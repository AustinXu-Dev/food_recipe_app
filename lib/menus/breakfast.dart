import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/model/menu.dart';
import 'package:testing_project/views/search_page.dart';

class BreakfastScreen extends StatelessWidget {
  final List<MenuItem> breakfastMenu = [
    MenuItem("Pancakes", "assets/breakfast/pancake.jpg", 4.5),
    MenuItem("Egg Benedict", "assets/breakfast/egg_benedict.jpg", 4.0),
    MenuItem("French Toast", "assets/breakfast/french_toast.jpg", 4.2),
    MenuItem("Omelette", "assets/breakfast/omelette.jpg", 4.8),
    MenuItem("Pancake", "assets/breakfast/pancake.jpg", 5.0),
    MenuItem("Peach Crisp Yogurt", "assets/breakfast/peach_crisp_yogurt.jpg", 4.8),
    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breakfast Menu"),
        backgroundColor: AppColor.appBarColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>SearchPage())
              )
              // Handle search button action

            },
          ),
        ],
      ),
      body: Container(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),child: _buildMenuList()),
    );
  }

  Widget _buildMenuList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: breakfastMenu.length,
      itemBuilder: (context, index) {
        return _buildMenuItemCard(breakfastMenu[index]);
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