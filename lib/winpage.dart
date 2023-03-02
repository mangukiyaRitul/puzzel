import 'package:flutter/material.dart';

class win extends StatefulWidget {

  const win({Key? key}) : super(key: key);

  @override
  State<win> createState() => _winState();
}

class _winState extends State<win> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double heidth=MediaQuery.of(context).size.height;
    //double apppbarheidth=kToolbarHeight;
    double statusbarheidth=MediaQuery.of(context).padding.top;
    double bottombarheidth=MediaQuery.of(context).padding.bottom;

    double bodyheidth=heidth-statusbarheidth-bottombarheidth;

    List<Color> gradient =[Color(0xff78858E),Color(0xffD7D8DC),Color(0xff78858E),Color(0xff78858E)];
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
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.020, 0, 0),
                child: Text("PUZZLE 1 COMPLETED",style: TextStyle(
                    fontSize: bodyheidth*0.03,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  color: Colors.indigo
                )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.025, 0, 0),
                height: bodyheidth*0.40,
                width: width*0.50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/trophy.png"),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.025, 0, 0),
                alignment: Alignment.center,
                   height: bodyheidth*0.055,
                width: width*0.45,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.black26),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(colors: gradient)
                ),
                child: Text("CONTINUE",style: TextStyle(
                    fontSize: bodyheidth*0.030,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.025, 0, 0),
                alignment: Alignment.center,
                height: bodyheidth*0.055,
                width: width*0.45,
                decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(colors: gradient)
                ),
                child: Text("MAIN MENU",style: TextStyle(
                    fontSize: bodyheidth*0.030,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.025, 0, 0),
                alignment: Alignment.center,
                height: bodyheidth*0.055,
                width: width*0.45,
                decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(colors: gradient,
                    ),
                ),
                child: Text("BUY PRO",style: TextStyle(
                    fontSize: bodyheidth*0.030,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.020, 0, 0),
                child: Text("SHARE THIS PUZZLE",style: TextStyle(
                    fontSize: bodyheidth*0.03,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo
                )),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(0, bodyheidth*0.015,0, 0),
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
            ],
          ),

        ),
      ),
    );
  }
}
