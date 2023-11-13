import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/views/main_screen.dart';

class CookingAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Let's COOK!",
            style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),
          ),
          Lottie.asset(
            'animations/cooking.json',
            height: 300,
            reverse: true,
            repeat: true,
            fit: BoxFit.cover,
          ),
          
          SizedBox(height: 100),
          Center(
            child: ElevatedButton(
              onPressed: () => (
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()))
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all(AppColor.appBarColor),
                ),

              child: const Text('Done', style: TextStyle(color: Colors.white)),
              ),
          )
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (BuildContext context) => MainPage(),
          //       ),
          //     );
          //   },
          
          //   child: Center(
          //     child: Container(
          //     height: 45,
          //     width: 150,
          //     decoration: BoxDecoration(
          //       color: Colors.orange,
          //       borderRadius: BorderRadius.circular(30),
          //     ),
          //     child: Center(
          //       child: Text(
          //         "Continue",
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //   ),
          //   ),
          // ),
        ],
      ),
    );
  }
}