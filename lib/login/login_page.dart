import 'package:flutter/material.dart';
import 'package:testing_project/views/main_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 251, 110, 22),
              Colors.white
            ]
          )
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            const SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(15),
              child: const Column(
                children:<Widget>[
                  Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 20,),
                  Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 18),),
                ],
              ), 
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget> [
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(255, 159, 57, 0.57),
                            blurRadius: 20,
                            offset: Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))
                              ),
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () =>{
                              Navigator.push(context, _customPageRouteBuilder(MainPage()))
                            },
                            child: Text(
                              "Login", 
                              style: TextStyle(
                              color: Colors.white, 
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Continue with social media.", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook", 
                                style: TextStyle(
                                color: Colors.white, 
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                        ),
                              
                            ),
                          ),
                          SizedBox(width:30,),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black
                              ),
                              child: Center(
                                child: Text(
                                  "Github", 
                                style: TextStyle(
                                color: Colors.white, 
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                        ),
                            ),
                          )
                        ],
                      )
                    ],
                    ),
                ),
              ))
          ],
        ),
        
      ),
    );
  }
}


PageRouteBuilder _customPageRouteBuilder(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      );
    },
    transitionDuration: Duration(milliseconds: 500),
  );
}