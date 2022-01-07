import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/homepage.dart';

class NewNote extends StatelessWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme:ThemeData(
          fontFamily: "avenir"
      ),
      home: newNote(),
    );
  }
}

class newNote extends StatefulWidget {
  const newNote({Key? key}) : super(key: key);

  @override
  _newNoteState createState() => _newNoteState();
}

class _newNoteState extends State<newNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Color(0xfff96060),
        title: Text("New Note"),

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
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.pink,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.yellow,
                          ),
                        ),
                      ],

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
                        child: Text("Add Note" , style: TextStyle(
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
