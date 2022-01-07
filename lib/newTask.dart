import 'package:flutter/material.dart';
import 'package:task_manager_app/homepage.dart';

class NewTask extends StatelessWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          fontFamily: "avenir"
      ),
      home: newtask(),
    );
  }
}
class newtask extends StatefulWidget {
  const newtask({Key? key}) : super(key: key);

  @override
  _newtaskState createState() => _newtaskState();
}

class _newtaskState extends State<newtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Color(0xfff96060),
        title: Text("NewTask"),

        leading: IconButton( onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,

          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 10,
              color: Color(0xfff96060),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black.withOpacity(0.8),
                )
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,

              ),
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Text("For", style: TextStyle(
                          fontSize: 18,
                        ),

                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                          ),
                          child: Text(
                            "Assignee", style: TextStyle(
                              fontSize: 18
                          ),
                          ),
                        ),
                        Text("In", style: TextStyle(
                          fontSize: 18,
                        ),

                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                          ),
                          child: Text(
                            "Project", style: TextStyle(
                              fontSize: 18
                          ),
                          ),
                        ),


                      ],

                    ),
                    SizedBox(height: 15,),
                    Container(

                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Title",
                            border: InputBorder.none
                        ),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description", style: TextStyle(
                              fontSize: 18
                          ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft : Radius.circular(10),
                                topRight: Radius.circular(10),

                              ),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              color: Colors.white,
                            ),
                            child: TextField(
                              maxLines: 6,
                              decoration: InputDecoration(
                                  hintText: "Add desscription Here",
                                  border: InputBorder.none
                              ),
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                bottomLeft : Radius.circular(10),
                                bottomRight: Radius.circular(10),

                              ),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: IconButton( onPressed:(){},
                                    icon: Icon(Icons.attach_file, color: Colors.grey,),
                                  ),
                                )
                              ],
                            ),
                          )

                        ],

                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Duedate",
                            border: InputBorder.none
                        ),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Add Member", style: TextStyle(
                      fontSize: 18,
                    ),

                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Text("Anyone", style: TextStyle(
                          fontSize: 18
                      ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xfff96060),
                      ),
                      child: Center(
                        child: Text("Add Task" , style: TextStyle(
                          color: Colors.white,
                        ),),

                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

