import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/model/item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Item> allItems = [
    Item("Banana Cocktail", "assets/images/banana_cocktail.jpg"),
    Item("Banana Cream Pie", "assets/images/banana_cream_pie.jpg"),
    Item("Banana Mochi", "assets/images/banana_mochi.jpg"),
    Item("Banana Smoothie", "assets/images/banana_smoothie.jpg"),
    Item("Banana Yogurt", "assets/images/banana_yogurt.jpg"),
    Item("Fried Chicken", "assets/images/fried_chicken.jpg"),
    Item("Grilled Chicken", "assets/images/grill_chicken.jpg"),
    Item("Chicken Honey", "assets/images/chicken_honey.jpg"),
    Item("Chicken Potato", "assets/images/chicken_potato.jpg"),
    Item("Chicken Nugget", "assets/images/chicken_nugget.jpg"),
    Item("Beef Pasta", "assets/images/beef_pasta.jpg"),
    Item("Beef Steak", "assets/images/beef_steak.jpg"),
    Item("Beef Stew", "assets/images/beef_stew.jpg"),
    Item("Italian Beef Ragu", "assets/images/italian_beef_ragu.jpg"),
    Item("Roast Beef Tenderlion", "assets/images/roast_beef_tenderlion.jpg"),
    Item("Butter rice Kale", "assets/images/butter_rice_kale.jpg"),
    Item("Green Kale Smoothie", "assets/images/green_kale_smoothie.jpg"),
    Item("Kale Pesto", "assets/images/kale_pesto.jpg"),
    Item("Kale Salad Bacon", "assets/images/kale_salad_bacon.jpg"),
    Item("Shrimp Kale Caesar Salad", "assets/images/shrimp_kale_caesar_salad.jpg"),
    Item("Pork Hamonado", "assets/images/pork_hamonado.jpg"),
    Item("Pork Souvlaki Pita Wraps", "assets/images/pork_souvlaki_pita_wraps.jpg"),
    Item("Pork Steak", "assets/images/pork_steak.jpg"),
    Item("Peanut Butter Banana", "assets/images/peanut_butter_banana.jpg"),
    Item("Fried Pork", "assets/images/fried_pork.jpg"),
    
    // Add more items as needed
  ];

  List<Item> displayedItems = [];

  @override
  void initState() {
    super.initState();
  }

  void updateDisplayedItems(String query) {
    setState(() {
      displayedItems = query.isNotEmpty
          ? allItems
              .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
              .toList()
          : [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Recipes"),
        backgroundColor: AppColor.appBarColor,
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          if (displayedItems.isNotEmpty) _buildItemList(),
            // GridView.count(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 16.0,
            //   mainAxisSpacing: 16.0,
            //   padding: EdgeInsets.all(16.0),
            //   children: [
            //     GridItem(image: 'assets/home_pic/h1.jpg', name: 'Breakfast'),
            //     GridItem(image: 'assets/home_pic/h2.jpg', name: 'Lunch'),
            //     GridItem(image: 'assets/home_pic/h3.jpg', name: 'Dinner'),
            //     GridItem(image: 'assets/home_pic/h4.jpg', name: 'Dessert'),
            //   ],
            // ),
        ],
      ),
      
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search for items...",
          prefixIcon: Icon(Icons.search, color: AppColor.appBarColor,), 
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide.none
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        onChanged: updateDisplayedItems,
      ),
    );
  }

  Widget _buildItemList() {
    return Expanded(
      child: ListView.builder(
        itemCount: (displayedItems.length / 2).ceil(),
        itemBuilder: (context, index) {
          int firstItemIndex = index * 2;
          int secondItemIndex = (index * 2) + 1;

          return Row(
            children: [
              if (firstItemIndex < displayedItems.length)
                Expanded(child: _buildItemTile(displayedItems[firstItemIndex])),
              if (secondItemIndex < displayedItems.length)
                Expanded(child: _buildItemTile(displayedItems[secondItemIndex])),
            ],
          );
        },
      ),
    );
  }

  Widget _buildItemTile(Item item) {
    return Container(
      margin: EdgeInsets.all(0.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 180.0,
            height: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(item.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            item.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     IconButton(
          //       icon: Icon(Icons.visibility),
          //       onPressed: () {
          //         // Handle view details action
          //       },
          //     ),
          //     IconButton(
          //       icon: Icon(Icons.save),
          //       onPressed: () {
          //         // Handle save action
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}