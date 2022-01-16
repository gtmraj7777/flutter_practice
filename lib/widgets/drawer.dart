import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/12/14/1009949-virat-kohli.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(

              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
            margin: EdgeInsets.zero,
            accountEmail: Text("gautam@gmail.com"), accountName: Text("Gautam"),
              
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              )
          
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.purple,),
            title: Text("Home",textScaleFactor: 1.5,style: TextStyle(color: Colors.purple),),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.purple,),
            title: Text("Profile",textScaleFactor: 1.5,style: TextStyle(color: Colors.purple),),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,color: Colors.purple,),
            title: Text("Email me",textScaleFactor: 1.5,style: TextStyle(color: Colors.purple),),
          ),

        ],
      ),
    );
  }
}
