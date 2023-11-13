import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testing_project/firebase_options.dart';
import 'package:testing_project/login/login_page.dart';
import 'package:testing_project/views/home_page.dart';
// import 'package:testing_project/views/cooking_step.dart';
import 'package:testing_project/views/main_screen.dart';
import 'package:testing_project/views/on_boarding_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}


class MainApp extends StatelessWidget {
  MainApp({super.key});
  Color rgbaColor = Color.fromRGBO(240, 150, 91, 1); // This represents a semi-transparent red color
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: rgbaColor
      ),
      home: const OnboardingScreen(),
    );
  }
}
