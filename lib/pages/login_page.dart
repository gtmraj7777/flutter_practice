import 'package:first_app11/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.jpg",fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),
            Text("Welcome $name",style: TextStyle(fontSize: 30.0,fontFamily: GoogleFonts.lateef().fontFamily),),

            Padding(padding: EdgeInsets.all(10.0),
              child: Column(
                children: [

                  TextFormField(decoration: InputDecoration(
                    hintText: "UserName",
                    labelText: "UserName",
                  ),onChanged: (value) {
                    name = value;
                  setState(() {});
                  },),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),),
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      height: 50,
                      width: changeButton? 60: 120,
                      alignment: Alignment.center,
                      //color: Colors.deepPurpleAccent,
                      child: changeButton?Icon(Icons.done,color: Colors.white,):Text("Click",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      decoration: BoxDecoration(color: Colors.blue,

                          borderRadius: BorderRadius.circular(changeButton ? 20 :10)), duration: Duration(seconds: 1),
                    ),
                  ),
                  // ElevatedButton(onPressed: () {
                  //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //
                  // }, child: Text("Click"),style: TextButton.styleFrom(minimumSize: Size(120, 50)),),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
