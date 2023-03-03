import 'package:flutter/material.dart';

class level extends StatefulWidget {
  const level({Key? key}) : super(key: key);

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
                margin: EdgeInsets.symmetric(horizontal: width*0.030),
                height: bodyheidth*0.80,
                width: width,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: bodyheidth*0.020,
                      crossAxisSpacing:  bodyheidth*0.020,
                    ),
                    itemBuilder:(context, index) {
                      return Container(
                        height: bodyheidth*0.080,
                        width: width*0.03,
                        decoration: BoxDecoration(
                        image: DecorationImage(

                          image: AssetImage("image/lock.png"),

                        ),
                        ),
                      );
                    },
                itemCount: 24,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: bodyheidth*0.035),
                    height: bodyheidth*0.08,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/next.png"),
                      )
                    ),
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
