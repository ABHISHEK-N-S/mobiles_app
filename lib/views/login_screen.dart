import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiles_app/views/home_app.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: Form(child: Column(
          children: [
            Container(
              height: 300,
              width: 600,
              child: Icon(Icons.mobile_friendly_outlined),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "user name",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,

              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Password",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
            ),
            TextButton(onPressed: (){}, child: Text("forget password")),
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Home_mobiles(),
              ));


            },child: Text("Submit"),)
          ],
        )),
      ) ,
    );
  }
}


