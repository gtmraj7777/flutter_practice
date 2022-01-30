import 'package:first_app11/models/catalog.dart';
import 'package:first_app11/widgets/drawer.dart';
import 'package:first_app11/widgets/themes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
              if(CatalogModals.items != null && CatalogModals.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().expand()
            ],
          ) ,
        ),
      ),
    );

  }


}


class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModals.items.length,
    shrinkWrap: true,
    itemBuilder: (context,index){
        final catalog = CatalogModals.items[index];
        return CatalogItem(catalog: catalog);

    });
  }
}


class CatalogItem extends StatelessWidget {
  //const CatalogItem({Key? key}) : super(key: key);

  final Item catalog;

  const CatalogItem({Key? key,required this.catalog}) :assert(catalog != null), super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(catalog.image),
          Expanded(child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              catalog.desc.text.make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor), shape: MaterialStateProperty.all(StadiumBorder()), ),

                      onPressed: (){},


                      child: "Buy".text.make())
                ],
              ),

            ],

          ))
        ],
      )



    ).white.rounded.square(150).make().py16();
  }
}



class CatalogImage extends StatelessWidget {
  //const CatalogImage({Key? key}) : super(key: key);

  final String image;


  CatalogImage(this.image);

  @override
  Widget build(BuildContext context) {
    return  Image.network(image).box.roundedLg.p16.color(MyTheme.creamColor).make().p16().w40(context);
  }
}




