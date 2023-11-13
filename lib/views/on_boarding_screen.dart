import 'package:flutter/material.dart';
import 'package:testing_project/login/login_page.dart';
import 'package:testing_project/page_route_builder.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => NextStep(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 15),
                Image.asset('assets/images/logo_foodo.png'),
                const Text(
                  "....",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25) ,
                  ),
                SizedBox(height: 20),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NextStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 195),
                Image.asset('assets/images/logo_foodo.png'),
                const Text(
                  "..Cook it Fun..",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25) ,
                  ),
                SizedBox(height: 300),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      (
                        _customPageRoute(LoginPage())
                        // builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

PageRouteBuilder _customPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var fadeAnimation = animation.drive(tween);
      return FadeTransition(
        opacity: fadeAnimation,
        child: child,
      );
    },
  );
}