import 'package:flutter/material.dart';
void main() {
  runApp(Myapp());
}
class Myapp extends StatefulWidget{
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            i++;
          });
        },child: Icon(Icons.add),backgroundColor: Colors.black,foregroundColor: Colors.red, ),
        body: SafeArea(child: Text('You have cliked $i times ',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 20),)),
      ),
    );
  }
}
