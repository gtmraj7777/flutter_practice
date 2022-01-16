import 'package:first_app11/models/catalog.dart';
import 'package:flutter/material.dart';


class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  //const ItemWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.limeAccent,
       shape: StadiumBorder(),
     // elevation: 0.0,
      child: ListTile(
         onTap: (){
           print("${item.name} pressed...");
         },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",textScaleFactor : 1.3,style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,),),
      ),
    );
  }
}

