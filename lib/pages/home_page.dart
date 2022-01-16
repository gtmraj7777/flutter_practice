import 'package:first_app11/models/catalog.dart';
import 'package:first_app11/widgets/drawer.dart';
import 'package:first_app11/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  final double day = 100;
  final dummyList = List.generate(20, (index) => CatalogModals.items[0]);

  // HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("HOME"),),
      body: Padding(padding: EdgeInsets.all(8.0),
      child: ListView.builder(itemCount: dummyList.length,itemBuilder:(context,index){

        return ItemWidget(item:dummyList[index],);
      },
      ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
