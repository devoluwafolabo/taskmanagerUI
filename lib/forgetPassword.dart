import 'package:flutter/material.dart';
import 'package:task_manager_app/resetPassword.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          fontFamily: "avenir"
      ),
      home: forgetPassword(),
    );
  }
}
class forgetPassword extends StatefulWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  _forgetPasswordState createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
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

            Text("Forgot Password",
              style: TextStyle(fontSize: 35),
            ),
            Text("Do input your mail and you will recieve a reset code",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20,),
            Text("Mail ID",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter your username"
              ),
            ),
            SizedBox(height: 20,),
                Center(
                  child:InkWell(
                    onTap: openResetPassword,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                      decoration: BoxDecoration(
                          color: Color(0xfff96060),
                          borderRadius: BorderRadius.all(Radius.circular(7))
                      ),
                      child: Text("Send Request", style: TextStyle(
                        color: Colors.white
                      ),),
                    ),

                  )
                )
          ],
        ),
      ),
    );
  }
  void openResetPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword()));
  }
}
