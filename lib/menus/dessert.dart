
import 'package:flutter/material.dart';
import 'package:testing_project/menus/pancake_detail.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/model/menu.dart';
import 'package:testing_project/views/search_page.dart';
// import 'package:testing_project/views/main_screen.dart';

class DessertScreen extends StatelessWidget {
  final List<MenuItem> dessertMenu = [
    
    MenuItem("Burmese Tea Leaf Salad", "assets/dessert/tea_leaf.jpg", 4.2),
    MenuItem("Pancake", "assets/dessert/pancake_detail.jpg", 5.0),
    MenuItem("Toffee Pudding", "assets/dessert/toffee_pudding.jpg", 4.8),
    MenuItem("Cheesecake", "assets/dessert/cheesecake.jpg", 5.0),
    MenuItem("Mango Pancake", "assets/dessert/mango_pancake.jpg", 4.8),
    MenuItem("Semolina Cake", "assets/dessert/semolina_cake.jpg", 4.5),
    MenuItem("Snow Skin Moon Cake", "assets/dessert/snow_skin_mooncakes.jpg", 4.0),
    MenuItem("Pancake", "assets/dessert/pancake_detail.jpg", 5.0)

    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dessert Menu"),
        backgroundColor: AppColor.appBarColor,
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
      body: Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),child: _buildMenuList(context)),
    );
  }

  Widget _buildMenuList(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: dessertMenu.length,
      itemBuilder: (context, index) {
        return _buildMenuItemCard(dessertMenu[index], context);
      },
    );
  }

  Widget _buildMenuItemCard(MenuItem menuItem, BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context)=>PancakeDetail()));
            },
            child: Container(
              height: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(menuItem.imagePath),
                  fit: BoxFit.cover,
                ),
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