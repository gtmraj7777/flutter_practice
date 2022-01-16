import 'package:first_app11/pages/home_page.dart';
import 'package:first_app11/pages/login_page.dart';
import 'package:first_app11/utils/routes.dart';
import 'package:first_app11/widgets/themes.dart';
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
    theme: MyTheme.lightTheme(context),
     darkTheme: MyTheme.darkTheme(context),
     // home:HomePage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
