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

  final _formKey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){


      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });

    }


    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),
            Text("Welcome $name",style: TextStyle(fontSize: 30.0,fontFamily: GoogleFonts.lateef().fontFamily),),

            Padding(padding: EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                  child: Column(
                        children: [
                    TextFormField(decoration: InputDecoration(
                      hintText: "UserName",
                      labelText: "UserName",
                    ),
                      validator: (value)
                      {
                        if(value!.isEmpty)
                          {
                            return "User name can not be empty";
                          }
                        return null;
                      },
                      onChanged: (value) {
                      name = value;
                      setState(() {});
                    },),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return "Password can not be empty";
                        }
                        else if(value.length < 6)
                          {
                            return "Password must be atleast 6 character";
                          }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(changeButton?50:8),
                      child: InkWell(

                        onTap: ()=>moveToHome(context),
                        child: AnimatedContainer(
                          height: 50,
                          width: changeButton? 60: 120,
                          alignment: Alignment.center,
                          //color: Colors.deepPurpleAccent,
                          child: changeButton?Icon(Icons.done,color: Colors.white,):Text("Click",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

                          duration: Duration(seconds: 1),
                        ),
                      ),
                    ),
                    // ElevatedButton(onPressed: () {
                    //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //
                    // }, child: Text("Click"),style: TextButton.styleFrom(minimumSize: Size(120, 50)),),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
