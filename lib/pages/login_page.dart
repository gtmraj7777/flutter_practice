import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
        Image.asset("assets/images/login_image.jpg",fit: BoxFit.cover,),
        SizedBox(
          height: 20,
        ),
        Text("Welcome",style: TextStyle(fontSize: 30.0,fontFamily: GoogleFonts.lateef().fontFamily),),

          Padding(padding: EdgeInsets.all(10.0),
          child: Column(
            children: [

              TextFormField(decoration: InputDecoration(
                hintText: "UserName",
                labelText: "UserName",
              ),),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                print("GAUTAM");

              }, child: Text("Click"))
              
            ],
          ),
          ),

        ],
      ),
    );
  }
}
