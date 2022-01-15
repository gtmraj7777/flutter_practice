import 'package:first_app11/pages/home_page.dart';
import 'package:first_app11/pages/login_page.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
  const double PI = 3.14;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home:HomePage(),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage(),
      },
    );
  }
}
