import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_manager_app/newCheck.dart';
import 'package:task_manager_app/newNote.dart';
import 'package:task_manager_app/newTask.dart';

// @dart=2.9
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          fontFamily: "avenir"
      ),
      home: homePage(),
    );
  }


}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  String filterType = "today";
  onChangeFilter( String filter){
    filterType = filter;
    setState(() {

    });
  }
  DateTime today = new DateTime.now();
  var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug",
  "Sept", "oct", "Nov", "Dec"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(

                elevation: 0,
                backgroundColor: Color(0xfff96060),
                title: Text("Work List", style: TextStyle(
                  fontSize: 18,
                ),
                ),
                actions: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.short_text)
                  )

                ],
              ),
              Container(
                height: 50,
                color: Color(0xfff96060),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        InkWell(
                          onTap:(){onChangeFilter("today");},
                          child: Text("Today", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 4,
                          width: 120,
                          color: (filterType == "today") ?Colors.white: Colors.transparent,


                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        InkWell(
                          onTap:(){onChangeFilter("monthly");},
                          child: Text("Monthly", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),

                        ),
                        SizedBox(height: 10,),
                        
                        Container(
                          height: 4,
                          width: 120,
                          color: (filterType == "monthly")?Colors.white: Colors.transparent,


                        )
                      ],)
                  ],
                ),

              ),

              (filterType == "monthly") ? TableCalendar(
                  startingDayOfWeek: StartingDayOfWeek.monday,


                    focusedDay: DateTime.now(),
                    firstDay:DateTime.utc(2010, 3, 14),
                    lastDay: DateTime.utc(2030, 10, 16),
                ): Container(),
              SizedBox(height: 30,),
              Expanded(

                  child: SingleChildScrollView(
                    child: Column(

                      children: [
                        SizedBox(height: 20,),

                        Container(
                          padding: EdgeInsets.all(20),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Today ${months[today.month-1]}, ${today.day} /${today.year}",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey
                                ),

                              )
                            ],
                          ),
                        ),
                        taskManger(Colors.grey, "Meeting with someone" , "9:00AM"),
                        taskManger(Colors.black, "Meeting with someone" , "9:00AM"),
                        taskManger(Colors.blue, "Meeting with someone" , "9:00AM"),
                        
                      ],
                    ),
                  ),
              ),

              Container(
                height: 110,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xff292e4e),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,

                                  ),
                                  SizedBox(height: 5,),
                                  Text("My Task", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                  ),)
                                ],
                              ),
                            ),

                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: Colors.white,

                                  ),
                                  SizedBox(height: 5,),
                                  Text("Menu", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(width: 50,),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.content_paste,
                                    color: Colors.white,

                                  ),
                                  SizedBox(height: 5,),
                                  Text("Quick", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),)
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: Colors.white,

                                  ),
                                  SizedBox(height: 5,),
                                  Text("Profile", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15
                                  ),)
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: InkWell(
                          onTap: openTaskPop,
                          child: Container(
                            
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.pink, Colors.red]
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                             child: Text("+", style: TextStyle(
                               fontSize: 40,
                               color: Colors.white,
                             ),)
                            ),
                          ),
                        ))
                  ],
                ),
              )



            ],
          ),
          Container(
            child: (taskUp == "open") ?Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.2),
              child: Center(
                child: InkWell(
                  
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.4,
                    width: MediaQuery.of(context).size.width*0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 1,),
                        InkWell(
                          onTap: newTask,
                          child: Container(
                            child: Text("Add Task"),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.black.withOpacity(0.2),
                        ),

                        InkWell(
                          onTap: newNote,
                          child: Container(
                            child: Text("Add Quick Note"),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.black.withOpacity(0.2),
                        ),
                        InkWell(
                         onTap: newCheckList,
                          child: Container(
                            child: Text("Add CheckList"),
                          ),
                        ),
                        SizedBox(height: 1,)
                      ],

                    ),
                  ),
                ),
              ),
            ): Container(),
          )
        ],
      ),
    );
  }
  Slidable taskManger(Color color, String title, String time){
    return Slidable(
        actionExtentRatio:0.3,
        actionPane: SlidableDrawerActionPane(),
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.003),
            offset: Offset(0,9),
            blurRadius: 20,
            spreadRadius: 1
          )],

        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border:Border.all(color: color, width: 4)

              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,

                )
                ),
                Text(time,style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,)
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: 5,
              height: 50,
              color: color,
            )
          ],
        ),
      ),

    );
  }
String taskUp ="close";
  void openTaskPop() {
    taskUp = "open";
    setState(() {

    });
  }

  void closeTaskPop() {
    taskUp = "close";
    setState(() {

    });
  }

  void newTask() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NewTask()));
  }

  void newNote() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NewNote()));
  }

  void newCheckList() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NewCheck()));
  }
}
