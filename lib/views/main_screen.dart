import 'package:flutter/material.dart';
import 'package:testing_project/pages/profile_page.dart';
import 'package:testing_project/views/filter_page.dart';
// import 'package:testing_project/views/camera_page.dart';
// import 'package:testing_project/views/cooking_step.dart';
import 'package:testing_project/views/home_page.dart';
// import 'package:testing_project/views/ingredient_recipe.dart';
import 'package:testing_project/views/save_item_page.dart';
import 'package:testing_project/views/upload_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> _pages = <Widget>[
    SaveItemPage(),
    const FilterScreen(),
    const HomePage(),
    const UploadPage(),
    const ProfilePage()
  ];
  
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // shape: const CircularNotchedRectangle(),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: Colors.orange),
              label: "Library",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.input, color: Colors.orange),
              label: "Ingredients",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.orange),
              label: "Home",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_rounded, color: Colors.orange),
              label: "Scan",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.orange),
              label: "Profile",
              ),
          ],
        ),
      ),
    );

  }

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
}