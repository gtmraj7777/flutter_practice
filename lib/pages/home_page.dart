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

 // final dummyList = List.generate(20, (index) => CatalogModals.items[0]);

    @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

   loadData() async{
      await Future.delayed(Duration(seconds: 2));
  var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
  // print(catalogJson);
   var decodeData = jsonDecode(catalogJson);
 //  print(decodeData["products"]);

    var productData = decodeData["products"];
  print("++++++++++++++++++++++");
   // List<Item> list = List.from(productData).map((item) => Item.fromJson(item)).toList();

   // print(list.length);
   // for(int i =0;i< list.length;i++)
   //   {
   //     print(list[i]);
   //   }
   // print("++++++++++++++++++++++");
 CatalogModals.items  = List.from(productData).map((item) => Item.fromJson(item)).toList();
  setState(() {});


  }

  // HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("HOME"),),
      body: Padding(padding: EdgeInsets.all(8.0),
      child: (CatalogModals.items != null && CatalogModals.items.isNotEmpty)?ListView.builder(itemCount:  CatalogModals.items.length,itemBuilder:(context,index){

        return ItemWidget(item: CatalogModals.items[index],);
      },
      ):Center(
        child: CircularProgressIndicator(),
    ),
      ),
      drawer: const MyDrawer(),
    );
  }


}
