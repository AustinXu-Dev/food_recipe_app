import 'package:flutter/material.dart';
import 'package:testing_project/model/app_color.dart';
import 'package:testing_project/views/chicken_items.dart';
import 'package:testing_project/views/banana_items.dart';
import 'package:testing_project/views/pancake_items.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Set<String> selectedMeat = {};
  Set<String> selectedVegetable = {};
  Set<String> selectedSpices = {};
  Set<String> selectedFruit = {};

  List<String> genres = [
    'Chicken',
    'Beef',
    'Pork',
    'Squid',
    'Fish',
    'Shrimp',
    'Octopus',
    'Crab',
    'Egg',
  ];

  List<String> regions = [
    'Potato',
    'Tomato',
    'Salad',
    'Cabbage',
    'Cucumber',
    'Carrot',
    'Onion',
  ];

  List<String> languages = [
    'Sugar',
    'Salt',
    'Oil',
    'Chili',
    'Fish sauce',
    'Fish paste',
    'Butter',
    'Flour',
    'Baking Powder',
    'Milk',
  ];

  List<String> years = [
    'Apple',
    'Orange',
    'Strawberry',
    'Pineapple',
    'Papaya',
    'Banana',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spices Filter', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColor.appBarColor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              const Text(
                'Choose your meat:',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 8.0,
                children: genres.map((genre) {
                  return ElevatedButton(  
                    onPressed: () {
                      setState(() {
                        if (selectedMeat.contains(genre)) {
                          selectedMeat.remove(genre);
                        } else {
                          selectedMeat.add(genre);
                        }
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), // Adjust the radius as needed
                        ),
                      ),
                      backgroundColor: selectedMeat.contains(genre) ? MaterialStateProperty.all(Colors.orange) : MaterialStateProperty.all(Colors.white)
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: selectedMeat.contains(genre) ? Colors.white : Colors.orange,
                      
                    // ),
                    child: Text(genre, style: TextStyle(color: selectedMeat.contains(genre) ? Colors.white : Colors.black)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Choose your vegetable:',
                style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: regions.map((region) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (selectedVegetable.contains(region)) {
                          selectedVegetable.remove(region);
                        } else {
                          selectedVegetable.add(region);
                        }
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), // Adjust the radius as needed
                        ),
                      ),
                      backgroundColor: selectedVegetable.contains(region) ? MaterialStateProperty.all(Colors.orange) : MaterialStateProperty.all(Colors.white)
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: selectedVegetable.contains(region) ? Colors.white : Colors.orange,
                    // ),
                    child: Text(region, style: TextStyle(color: selectedVegetable.contains(region) ? Colors.white : Colors.black)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Choose your spices:',
                style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: languages.map((language) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (selectedSpices.contains(language)) {
                          selectedSpices.remove(language);
                        } else {
                          selectedSpices.add(language);
                        }
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), // Adjust the radius as needed
                        ),
                      ),
                      backgroundColor: selectedSpices.contains(language) ? MaterialStateProperty.all(Colors.orange) : MaterialStateProperty.all(Colors.white)
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: selectedSpices.contains(language) ? Colors.white : Colors.orange,
                    // ),
                    child: Text(language, style: TextStyle(color: selectedSpices.contains(language) ? Colors.white : Colors.black)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Choose your fruit:',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: years.map((year) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (selectedFruit.contains(year)) {
                          selectedFruit.remove(year);
                        } else {
                          selectedFruit.add(year);
                        }
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), // Adjust the radius as needed
                        ),
                      ),
                      backgroundColor: selectedFruit.contains(year) ? MaterialStateProperty.all(Colors.orange) : MaterialStateProperty.all(Colors.white)
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: selectedFruit.contains(year) ? Colors.white : Colors.orange,
                    // ),
                    child: Text(year, style: TextStyle(color: selectedSpices.contains(year) ? Colors.white : Colors.black)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle filtering logic here
                    // Show a message based on conditions
                    int num = checkRecipe();
                    switch(num){
                      case 0:
                        showNoRecipeMesasge();
                        break;
                      case 1:
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PancakeRecipes()));
                        break;
                      case 2:
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChickenRecipes()));
                        break;
                      case 3:
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BananaRecipes()));
                        break;
                      default:
                        showNoRecipeMesasge();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Text('Show Recipes', style: TextStyle(color: Colors.orange)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  checkRecipe() {
    int number;
    if (selectedMeat.contains('Egg') &&
        selectedSpices.contains('Sugar') &&
        selectedSpices.contains('Salt') &&
        selectedSpices.contains('Oil') &&
        selectedSpices.contains('Flour') &&
        selectedSpices.contains('Baking Powder') &&
        selectedSpices.contains('Milk')) {
      number = 1;
    } else if (selectedMeat.contains('Chicken') &&
        selectedVegetable.contains('Potato') &&
        selectedSpices.contains('Salt') &&
        selectedSpices.contains('Oil') &&
        selectedSpices.contains('Fish sauce')) {
      number = 2;
    } else if (selectedFruit.contains('Banana') &&
        selectedMeat.isEmpty &&
        selectedVegetable.isEmpty &&
        selectedSpices.isEmpty) {
      number = 3;
    } else {
      number = 0;
    }
    return number;
    // Display the message using SnackBar
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text(message),
    //     duration: Duration(seconds: 3),
    //   ),
    // );
  }

  void showNoRecipeMesasge(){
    String message = "No Recipe Can be made";
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
        )
    );
  }

}