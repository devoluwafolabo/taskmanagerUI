import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'forgetPassword.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        fontFamily: "avenir"
      ),
      home:login()
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState(


  );
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
         backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
          Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {  },
        ),
      ),
    body: Container(
      padding: EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Welcome Back!",
            style: TextStyle(fontSize: 35),
          ),
          Text("Sign in to continue",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20,),
          Text("Username",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your username"
            ),
          ),
          SizedBox(height: 20,),
          Text("Password",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password"
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: openForgetPassword,
                child: Text("Forget Password?", ),
              )
            ],
          ),
          Expanded(
              child: Center(

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                decoration: BoxDecoration(
                    color: Color(0xfff96060),
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                child: Text("Login"),
                ),

          )
          )
        ],
      ),
    ),
    );
  }
  void openForgetPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassword()));
  }
}
