import 'package:flutter/material.dart';
import 'package:puzzel/pazzlelevel.dart';

import 'continue.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
  double width=MediaQuery.of(context).size.width;
  double heidth=MediaQuery.of(context).size.height;
  //double apppbarheidth=kToolbarHeight;
  double statusbarheidth=MediaQuery.of(context).padding.top;
  double bottombarheidth=MediaQuery.of(context).padding.bottom;

  double bodyheidth=heidth-statusbarheidth-bottombarheidth;

  List<Color> gradient =[Color(0xff78858E),Color(0xffD7D8DC),Color(0xff78858E)];

    return Scaffold(
      body:SafeArea(
        child: Container(
          height: bodyheidth*100,
          width: width*100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/background.jpg"),
                fit: BoxFit.fill,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, bodyheidth*0.075, 0, 0),
                    child: Text("Math Puzzles",style: TextStyle(color: Colors.indigo,fontSize: 35 ,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width*0.030),
                height: heidth*0.60,
                width: width-20,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("image/blackboard main menu.png"),
                         fit: BoxFit.fill,
                       )
                     ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      TextButton(onPressed: (){
                       setState(() {
                         Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return continu(0);
                         },));
                       });
                      }, child: Text("CONTINUE",style: TextStyle(fontFamily: "f1",color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                      TextButton(onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return level(0);
                            },));
                          });

                      }, child: Text("PUZZLES",style: TextStyle(fontFamily: "f1",color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                      TextButton(onPressed: (){
                        showDialog(
                            context: context,
                            builder: (context) {
                            return
                              Dialog(
                                child: Container(
                                  height: bodyheidth*0.30,
                                  width: width*0.50,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(  margin: EdgeInsets.fromLTRB(width*0.010, bodyheidth*0.020, 0, 0),child: Text("Benefits of pro Version",style: TextStyle(fontSize: bodyheidth*0.030,color: Colors.indigo,fontWeight: FontWeight.bold),))
                                        ],
                                      ),
                                      Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(width*0.015, bodyheidth*0.020, 0, bodyheidth*0.008),
                                                child: Text("1. No Ads",style: TextStyle(
                                                    fontSize: bodyheidth*0.022,
                                                    fontWeight: FontWeight.bold
                                                )),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(width*0.015, 0, 0, bodyheidth*0.008),
                                                child: Text("2. No wait time for hint and skip",
                                                    style: TextStyle(
                                                        fontSize: bodyheidth*0.022,
                                                        fontWeight: FontWeight.bold
                                                    )),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(width*0.015, 0, 0, bodyheidth*0.008),
                                                child: Text("3. Hint for every level",
                                                    style: TextStyle(
                                                        fontSize: bodyheidth*0.022,
                                                        fontWeight: FontWeight.bold
                                                    )),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(width*0.015, 0, 0, bodyheidth*0.008),
                                                child: Text("4. No Solustion for every level",
                                                    style: TextStyle(
                                                        fontSize: bodyheidth*0.022,
                                                        fontWeight: FontWeight.bold
                                                    )),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, bodyheidth*0.025, 0, 0),
                                            alignment: Alignment.center,
                                            height: bodyheidth*0.055,
                                            width: width*0.25,
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 2,color: Colors.black26),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                gradient: LinearGradient(colors: gradient)
                                            ),
                                            child:InkWell(onTap: (){
                                              setState(() {
                                                Navigator.pop(context);
                                              });
                                            },child:  Text("BUY",style: TextStyle(
                                              fontSize: bodyheidth*0.025,
                                              //     fontWeight: FontWeight.bold,
                                              //     fontStyle: FontStyle.italic
                                            ))),
                                          ),
                                         Container(
                                           margin: EdgeInsets.fromLTRB(0, bodyheidth*0.025, 0, 0),
                                           alignment: Alignment.center,
                                           height: bodyheidth*0.055,
                                           width: width*0.35,
                                           decoration: BoxDecoration(
                                               border: Border.all(width: 2,color: Colors.black26),
                                               borderRadius: BorderRadius.all(Radius.circular(10)),
                                               gradient: LinearGradient(colors: gradient)
                                           ),
                                           child:InkWell(onTap: (){
                                             setState(() {
                                               Navigator.pop(context);
                                             });
                                           },child:  Text("NO,THANKS",style: TextStyle(
                                             fontSize: bodyheidth*0.025,
                                             // fontWeight: FontWeight.bold,
                                             // fontStyle: FontStyle.italic
                                           ),)
                                           ),
                                         ),
                                        ],

                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },);

                      }, child: Text("BUY PRO",style: TextStyle(fontFamily: "f1",color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(bodyheidth*0.020, 0,0, bodyheidth*0.025),
                    height: bodyheidth*0.10,
                    width: width*0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/ltlicon.png"),
                      )
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.fromLTRB(width*0.005, 0,0, 0),
                            height: bodyheidth*0.05,
                            width: width*0.10,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.black26),
                                gradient:LinearGradient(colors: gradient,
                                    begin: AlignmentDirectional.topEnd,
                                    end: AlignmentDirectional.bottomStart
                                ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                         
                            child: Image.asset("image/shareus.png"),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.fromLTRB(width*0.005, 0,0, 0),

                            height: bodyheidth*0.05,
                            width: width*0.10,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.black26),
                                gradient:LinearGradient(colors: gradient,
                                   begin: AlignmentDirectional.topEnd,
                                  end: AlignmentDirectional.bottomStart
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset("image/emailus.png"),
                          ),
                        ],
                      ),
                      Container(

                        margin:EdgeInsets.fromLTRB(0, 0, width*0.030, bodyheidth*0.030),
                        child: OutlinedButton(onPressed: (){}, child: Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 17),)),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




