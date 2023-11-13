import 'package:flutter/material.dart';
import 'package:testing_project/menus/breakfast.dart';
import 'package:testing_project/menus/dessert.dart';
import 'package:testing_project/menus/dinner.dart';
import 'package:testing_project/menus/lunch.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/views/home_grid_item.dart';
import 'package:testing_project/views/search_page.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Recipe'),
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.appBarColor,
      ),
      body: Column(
        children: [
          Padding(
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
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()))
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
            child: Row(
              children: [
                Text("What Do You Want To Cook Today?",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
              ],
              ),
          ),
          SizedBox(height: 30,),
          // Container(
          //   padding: EdgeInsets.all(8.0),
          //   child: ElevatedButton(
          //     onPressed: () => {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()))
          //     }, child: Text("Search Button"),),
          // ),
          Expanded(
            child: GridView.count(
              childAspectRatio: 0.86,
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              children: [
                GridItem(image: 'assets/home_pic/h1.jpg', name: 'Breakfast', widgetName: BreakfastScreen(),),
                GridItem(image: 'assets/home_pic/h2.jpg', name: 'Lunch', widgetName: LunchScreen(),),
                GridItem(image: 'assets/home_pic/h3.jpg', name: 'Dinner', widgetName: DinnerScreen(),),
                GridItem(image: 'assets/home_pic/h4.jpg', name: 'Dessert', widgetName: DessertScreen(),),
              ],
            ),
          )
        ],
      )
    );
  }
}
