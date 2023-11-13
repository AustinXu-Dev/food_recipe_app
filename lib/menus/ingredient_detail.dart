import 'package:flutter/material.dart';
import 'package:testing_project/menus/todo.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/views/cooking_step.dart';

class IngredientDetail extends StatefulWidget {
  const IngredientDetail({super.key});

  @override
  State<IngredientDetail> createState() => _IngredientDetailState();
}

class _IngredientDetailState extends State<IngredientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ingredients",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColor.appBarColor,

          // backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
          // margin: const EdgeInsets.only(
          //   top: 20,
          //    left: 20,
          //     right: 20,
          //      bottom: 20
          //      ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Align(
                    //   alignment: Alignment(-0.8, 0), 
                    //   child: Text(
                    //     "INGREDIENTS",
                    //     style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.bold
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center, 
                      child: Container(
                        height: 300,
                        width: 300,
                        child: ClipOval(
                          // borderRadius: BorderRadius.circular(15),
                          child: Container(
                            width: 150,
                            height: 150,
                            child: Image.asset('assets/images/breakfast5.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: const Align(
                        alignment: Alignment.centerLeft, 
                        child: Text(
                          "Dry Ingredients",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    const todo(ingredientName: "All purpose Flour", ingredientAmount: "188 g"),
                    const todo(ingredientName: "Baking Powder", ingredientAmount: "3 1/2 tsp"),
                    const todo(ingredientName: "White Sugar", ingredientAmount: "1 Tbsp"),
                    const todo(ingredientName: "Salt", ingredientAmount: "1/4 Tbsp"),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Other Ingredients",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    const todo(ingredientName: "Egg", ingredientAmount: "1"),
                    const todo(ingredientName: "Milk", ingredientAmount: "300 g"),
                    const todo(ingredientName: "Butter (Melted)", ingredientAmount: "3 Tbsp"),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () => (
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CookingStep()))
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text('Let\'s Prepare', style: TextStyle(color: Colors.orange)),
                        )
                      // child: InkWell(
                      //   onTap: () => {
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>CookingStep()))
                      //   },
                      //   child: Container(
                      //     height: 50,
                      //     width: 150,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //     child: const Center(
                      //       child: Text(
                      //       "Let's prep!",
                      //       style: TextStyle(
                      //         color: Colors.orange,
                      //         ),
                      //       )
                      //     ),
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          ),
           
        ),
      );
  }
}