import 'dart:ui';

import 'package:flutter/material.dart';
void main() {
  runApp(My2());
}
class My2 extends StatefulWidget{
  const My2({super.key});
  @override
  State<My2> createState() => _My2State();
}
class _My2State extends State<My2> {
  bool light=false;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      backgroundColor: light?Colors.white : Color(0xFF1C2222),
      body: SafeArea(
        child:Column(
        children: [
         Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){setState(() {
                  light=!light;
                });}, icon: Icon(Icons.dark_mode,color: light?Colors.black : Colors.white,))
                 
              ],
             ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,    
            children: [
              SizedBox(       
                width: 200,          
                height: 120,
                child: Card(
                  color: light? Colors.white : Color(0xFF090b0b),
                  margin: const EdgeInsets.all(10),            
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Text('\$9999',style: TextStyle(fontSize: 15,color:light? Colors.black:Colors.grey[300]),),
                      ),
                        Container(
                        padding:const EdgeInsets.all(15),
                        child:Text('Total Balance',style: TextStyle(fontSize: 15,color:light? Colors.grey[600]:Colors.grey[400]),),
                      ), 
                    ],
                  )   
                  )
                ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text('My Cards' ,style:TextStyle(color: light?Colors.grey[600]:Colors.grey[400] ),),
            ],
          ),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image(
            image: AssetImage('images/cc.png'),
            width: 150,
            height: 150
          ),
          SizedBox(width: 10,),
           Image(
            image: AssetImage('images/cc.png'),
            width: 150,
            height: 150
          ),
          SizedBox(width: 10,),
           Image(
            image: AssetImage('images/cc.png'),
            width: 150,
            height: 150
          ),
          SizedBox(width: 10,),
            ],
          ),
         ),
         Container(
          child: Text('History',style: TextStyle(color: light? Colors.black : Colors.white,),
         ),),
         Row(
          children: [
            Container(
              width: 410,
              height: 300,
              child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Card(
              color: light?Colors.white : Color(0xFF090b0b),
                    child: ListTile(
                      trailing: Text('+\$2',style: TextStyle(color: Colors.green),),
                      title: Text('Test1',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400]) ,),
                      subtitle: Text('1/1/2022',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400])),
                    ),
                  ),
            Card(
              color: light?Colors.white : Color(0xFF090b0b),
                    child: ListTile(
                      trailing: Text('+\$98',style: TextStyle(color: Colors.green),),
                      title: Text('Test2',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400]) ,),
                      subtitle: Text('1/1/2022',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400])),
                    ),
                  ),
                  Card(
                    color: light?Colors.white : Color(0xFF090b0b),
                    child: ListTile(
                      trailing: Text('+\$222',style: TextStyle(color: Colors.green),),
                      title: Text('Test3',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400]) ,),
                      subtitle: Text('1/1/2022',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400])),
                    ),
                  ),
                  Card(
                    color: light?Colors.white : Color(0xFF090b0b),
                    child: ListTile(
                      trailing: Text('-\$90',style: TextStyle(color: Colors.red),),
                      title: Text('Test4',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400]) ,),
                      subtitle: Text('1/1/2022',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400])),
                    ),
                  ),
                  Card(
                    color: light?Colors.white : Color(0xFF090b0b),
                    child: ListTile(
                      trailing: Text('-\$222',style: TextStyle(color: Colors.red),),
                      title: Text('test5',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400]) ,),
                      subtitle: Text('1/1/2022',style:TextStyle(color:light? Colors.grey[600]:Colors.grey[400])),
                    ),
                  ),
          ],
         ),
            )
          ],
         )
     ] ),
    ),
   ));
  }
}
