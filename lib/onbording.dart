
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
class Onbording extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "avenir",
      ),
      home:  onbording(),
    );


  }
}
class onbording extends StatefulWidget {

  @override
  _onbordingState createState() => _onbordingState();
}

class _onbordingState extends State<onbording> {
  int currentPage = 0;
  PageController _pageviewer = new PageController(
    initialPage: 0,
    keepPage: true
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                child: PageView(

                  controller: _pageviewer,
                  children: [
                    onBordingPage("onboard1", "Your Task Manager"),
                    onBordingPage("onboard2", "Execute all Task"),
                    onBordingPage("onboard3", "Get it ready!"),
                  ],
                  onPageChanged: (value)=>{setChange(value)},
                ),
              ),
              SizedBox(
             height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: List.generate(3, (index) => getIndicator(index)),

              )

            ],
          ),
          Positioned(

              bottom: 0,
              left: 0,
              right: 0,

              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/path.png"),
                    fit: BoxFit.fill
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: openLogin,
                      child: Container(

                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0,9),
                              blurRadius: 20,
                              spreadRadius: 3
                            )
                          ]
                        ),
                        child: Text("Get Started", style:
                          TextStyle(fontSize: 16),
                        ),
                      ),

                    ),
                    SizedBox(height: 20,),
                    Text("Login", style: TextStyle(fontSize:16, color: Colors.white),)
                  ],
                ),
              ),

          )
        ],
      ),
    );
  }

  AnimatedContainer getIndicator(int pageNo){
    return AnimatedContainer (
      duration: Duration(milliseconds: 50),
      height: 10,
      width: (currentPage == pageNo) ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: (currentPage == pageNo) ? Colors.black : Colors.grey
      ),
    );


  }
  Column onBordingPage(String img, String text){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
        ),
        SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width*0.6,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(

                  image: AssetImage("assets/images/$img.png")
              ),
          ),

        )

    ),
       SizedBox(
        height: 20,
       ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),

          child: Text(text,

          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ),
        Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),

            child: Text("glkhjfkg;l;kglhkrlektbioklbmkhktjytjhotuotyiotkvokltkvlekohtiovuyjskyhvrhwi",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20, ),
            textAlign: TextAlign.center,)
        )
    ]);
  }
  void openLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
  }
  setChange(int value){
    currentPage = value;
    setState(() {

    });
  }
}
