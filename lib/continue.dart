import 'package:flutter/material.dart';
import 'package:puzzel/winpage.dart';

class continu extends StatefulWidget {
  const continu({Key? key}) : super(key: key);

  @override
  State<continu> createState() => _continuState();
}

class _continuState extends State<continu> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heidth = MediaQuery.of(context).size.height;
    //double apppbarheidth=kToolbarHeight;
    double statusbarheidth = MediaQuery.of(context).padding.top;
    double bottombarheidth = MediaQuery.of(context).padding.bottom;

    double bodyheidth = heidth - statusbarheidth - bottombarheidth;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: bodyheidth * 100,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/gameplaybackground.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, bodyheidth*0.03, 0, 0),
                    height: bodyheidth * 0.05,
                    child: Image.asset("image/skip.png"),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, bodyheidth*0.03, 0, 0),
                    height: bodyheidth * 0.07,
                    width: width * 0.55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/level_board.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Text("Puzzle 1", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: bodyheidth*0.040,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold

                        )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, bodyheidth*0.03, 0, 0),
                    height: bodyheidth * 0.05,
                    child: Image.asset("image/hint.png",),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width*0.040),
                height: bodyheidth * 0.60,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("image/p1.png"),
                        fit: BoxFit.fill
                    )
                ),

              ),

              Container(
                height: bodyheidth * 0.15,
                width: width,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: bodyheidth * 0.05,
                          width: width * 0.60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),

                        ),
                        Container(
                          height: bodyheidth * 0.05,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("image/delete.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(
                          child: TextButton(onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return win();
                                  },));
                            });
                          }, child: Text("Submit", style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 20),)),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("1",
                              style: TextStyle(
                                  color: Colors.white,fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("2",
                              style: TextStyle(
                                  color: Colors.white, fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("3",
                              style: TextStyle(
                                  color: Colors.white, fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("4",
                              style: TextStyle(
                                  color: Colors.white,fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("5",
                              style: TextStyle(
                                  color: Colors.white,fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("6",
                              style: TextStyle(
                                  color: Colors.white, fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("7",
                              style: TextStyle(
                                  color: Colors.white, fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("8",
                              style: TextStyle(
                                  color: Colors.white, fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("9",
                              style: TextStyle(
                                  color: Colors.white,fontSize: bodyheidth*0.025))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: bodyheidth * 0.06,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("0",
                              style: TextStyle(
                                  color: Colors.white, fontSize: bodyheidth*0.025))),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
