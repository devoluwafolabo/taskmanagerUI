import 'package:flutter/material.dart';
import 'package:task_manager_app/passwordSuccessful.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "anevir"
      ),
      home: resetPassword(),
    );
  }
}

class resetPassword extends StatefulWidget {
  const resetPassword({Key? key}) : super(key: key);

  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
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

            Text("Reset Password",
              style: TextStyle(fontSize: 35),
            ),
            Text("Do input your mail and you will recieve a reset code",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20,),
            Text("Reset code",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "****"
              ),
            ),
            SizedBox(height: 20,),
            Text("New Password",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
            SizedBox(height: 20,),
            Text("Confirm Password",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Confirm Password"
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child:  Center(

                child:InkWell(
                  onTap: openPasswordSuccessful,
                  child: Container(

                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xfff96060),
                        borderRadius: BorderRadius.all(Radius.circular(7))
                    ),
                    child: Text("Change Password", style: TextStyle(
                        color: Colors.white
                    ),),
                  ),

                )
            )
            )
          ],
        ),
      ),
    );
  }
  void openPasswordSuccessful(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordSuccessful()));
  }
}
