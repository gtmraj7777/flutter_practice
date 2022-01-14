import 'package:flutter/material.dart';


void main()
{
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(color: Colors.white,
          child: Center(child: Text("GAUTAM"),),),
      ),
    );
  }
}
