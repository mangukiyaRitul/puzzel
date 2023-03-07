import 'package:flutter/material.dart';
import 'package:puzzel/continue.dart';

class level extends StatefulWidget {

  int leval;
  level(this.leval);
  @override
  State<level> createState() => _levelState();
}

class _levelState extends State<level> {

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double heidth=MediaQuery.of(context).size.height;
    //double apppbarheidth=kToolbarHeight;
    double statusbarheidth=MediaQuery.of(context).padding.top;
    double bottombarheidth=MediaQuery.of(context).padding.bottom;

    double bodyheidth=heidth-statusbarheidth-bottombarheidth;


    return Scaffold(
      body: SafeArea(
        child: Container(
          height: bodyheidth,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/background.jpg"),
              fit: BoxFit.fill,
            )
          ),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.020, 0, 0),
                child: Text(" Select Puzzle ",style: TextStyle(
                    fontSize: bodyheidth*0.04,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo
                )),
              ),
              Container(
                // color: Colors.indigo,
               padding: EdgeInsets.fromLTRB(0, bodyheidth*0.015, 0, 0),
                margin: EdgeInsets.symmetric(horizontal: width*0.030),
                height: bodyheidth*0.90,
                width: width,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: bodyheidth*0.010,
                      crossAxisSpacing:  bodyheidth*0.015,
                    ),
                    itemBuilder:(context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return continu(index);
                        },));
                      },child: Container(
                        height: bodyheidth*0.080,
                        width: width*0.03,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/lock.png"),
                          ),
                        ),
                      ),);
                    },
                  itemCount:  50,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
