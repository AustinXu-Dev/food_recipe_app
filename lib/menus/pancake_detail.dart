import 'package:flutter/material.dart';
import 'package:testing_project/menus/ingredient_detail.dart';
import 'package:testing_project/model/app_color.dart';

class PancakeDetail extends StatefulWidget {
  const PancakeDetail({super.key});

  @override
  State<PancakeDetail> createState() => _PancakeDetailState();
}

class _PancakeDetailState extends State<PancakeDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/dessert/pancake_detail.jpg"),        
            fit: BoxFit.cover, 
          ),
          
          // Container(
          //   width: 200.0, // Adjust the width as needed
          //   height: 200.0, // Adjust the height as needed
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.black,
          //       width: 2.0, // Adjust the border width as needed
          //     ),
          //   ),
          //   child: Image.asset(
          //     'assets/dessert/pancake_detail.jpg', // Replace with the actual path to your image file
          //     fit: BoxFit.cover, // Adjust this property based on your needs
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.appBarColor,
                  Colors.transparent,
                ],
                stops: [
                  0.2,
                  1,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              16,
              MediaQuery.of(context).padding.top + 50,
              16,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            // padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  "Cooking & Making \nDelicious Pancake Easily",
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .headlineMedium
                  //     ?.copyWith(color: Colors.white),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Discover more than 1200 food recipes in your hands and cooking it easily!",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 32),
                Center(
                  child: ElevatedButton(
                    onPressed: () => (
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>IngredientDetail()))
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(200, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      ),

                   
                    child: const Text('Get Started', style: TextStyle(color: Colors.black54)),
                    ),
                )
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>const IngredientDetail()));
                //   },
                //   child: 
                //   Container(
                //     height: 66,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(32),
                //     ),
                //     alignment: Alignment.center,
                //     child: Text(
                //       "Get Started",
                //       // style: Theme.of(context)
                //       //     .textTheme
                //       //     .titleMedium
                //       //     ?.copyWith(color: Colors.white),
                //       style: TextStyle(
                //         color: AppColor.appBarColor
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}