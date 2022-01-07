import 'package:flutter/material.dart';
import 'package:task_manager_app/homepage.dart';

class NewCheck extends StatelessWidget {
  const NewCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          fontFamily: "avenir"
      ),

      home: newCheck(),
    );
  }
}
class newCheck extends StatefulWidget {
  const newCheck({Key? key}) : super(key: key);

  @override
  _newCheckState createState() => _newCheckState();
}

class _newCheckState extends State<newCheck> {
  bool checked = false;
  List<int> selectedList =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Color(0xfff96060),
        title: Text("Check Note"),

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
                          Text("Title", style: TextStyle(
                              fontSize: 18
                          ),
                          ),
                          SizedBox(height: 10,),
                          Text("Check your note here!", style: TextStyle(
                              fontSize: 14
                          ),
                          ),

                          CheckboxListTile(
                              title: Text("List 1"),
                              value: selectedList.contains(1),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value){
                                setState(() {
                                  if (value!= null){
                                    selectedList.add(1);
                                  }
                                  else{
                                    selectedList.remove(1);
                                  }
                                });
                              }
                          ),
                          CheckboxListTile(
                              title: Text("List 1"),
                              value: selectedList.contains(3),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value){
                                setState(() {
                                  if (value!= null){
                                    selectedList.add(3);
                                  }
                                  else{
                                    selectedList.remove(3);
                                  }
                                });
                              }
                          ),
                          CheckboxListTile(
                              title: Text("List 1"),
                              value: selectedList.contains(2),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value){
                                setState(() {
                                  if (value!= null){
                                    selectedList.add(2);
                                  }
                                  else{
                                    selectedList.remove(2);
                                  }
                                });
                              }
                          ),
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
                        child: Text("Add Check Note" , style: TextStyle(
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

