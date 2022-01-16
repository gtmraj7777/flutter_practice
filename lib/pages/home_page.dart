import 'package:first_app11/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  final double day = 100;

  // HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("HOME"),),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("GAUTAM  $day"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
