import 'package:flutter/material.dart';
import "package:task_manager_app/homepage.dart";

class PasswordSuccessful extends StatelessWidget {
  const PasswordSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "avenir"
      ),
      home: passwordSuccessful(),
    );
  }
}
class passwordSuccessful extends StatefulWidget {
  const passwordSuccessful({Key? key}) : super(key: key);

  @override
  _passwordSuccessfulState createState() => _passwordSuccessfulState();
}

class _passwordSuccessfulState extends State<passwordSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/success.png")
              )
            ),
          ),
          Text("Successful", style: TextStyle(
            fontSize: 35
          ),
          textAlign: TextAlign.center,
          ),
          Text("You have succesfully change your password.", style: TextStyle(
              fontSize: 16
          ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70,),
          Center(
            child: InkWell(
              onTap: openHomePage,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                decoration: BoxDecoration(
                    color: Color(0xfff96060),
                    borderRadius: BorderRadius.all(Radius.circular(7))
                ),
                child: Text("Continue", style: TextStyle(
                  color: Colors.white,
                ),),
              ),

            ),
          )

        ],

      ),
    );
  }
  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
  }
}
