import 'package:flutter/material.dart';
import 'package:puzzel/home.dart';

void main ()
{

 runApp(puzzal());

}
class puzzal extends StatefulWidget {
  const puzzal({Key? key}) : super(key: key);

  @override
  State<puzzal> createState() => _puzzalState();
}

class _puzzalState extends State<puzzal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes:{
       'home':(context) =>home(),

     },
     home: home(),debugShowCheckedModeBanner: false,
    );
  }
}
