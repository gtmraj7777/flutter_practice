import 'package:first_app11/models/catalog.dart';
import 'package:first_app11/widgets/drawer.dart';
import 'package:first_app11/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  final double day = 100;

  final dummyList = List.generate(20, (index) => CatalogModals.items[0]);

    @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  void loadData() async{
  var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
  // print(catalogJson);
   var decodeData = jsonDecode(catalogJson);
   print(decodeData["products"]);
  }

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
