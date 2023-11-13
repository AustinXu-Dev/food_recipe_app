import 'package:flutter/material.dart';
// import 'package:testing_project/views/save_item_page.dart';

class GridItem extends StatelessWidget {
  final String image;
  final String name;
  final Widget widgetName;

  const GridItem({required this.image, required this.name, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight : Radius.circular(15),
            ),
            child: Image.asset(
              image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
            ),
            height: 300,
            width: double.infinity,
            child: Center(
              // child: Text(
              //   name,
              //   style: const TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 18.0,
              //   ),
              // ),
              child: TextButton(
                onPressed: () => {
                  Navigator.push(context, _customPageRouteBuilder(widgetName))
                },
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
PageRouteBuilder _customPageRouteBuilder(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 500),
  );
}
