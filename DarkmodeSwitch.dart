import 'package:flutter/material.dart';
void main() {
    runApp(App());
}
class App extends StatefulWidget{
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool light=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         backgroundColor: light? const Color(0xff212121) : Colors.white,
        body: Center(
          child: SwitchListTile(
            value: light,
            onChanged: ((value) {
              setState(() {
                light=value;
              });
            }),
            activeColor: Colors.amberAccent,
            activeTrackColor: Colors.purple[800],
            secondary: Icon(Icons.dark_mode ,color: light? Colors.white : Colors.black,size: 20,),
            title: Text(light?'dark mode on' :'dark mode off' , style: TextStyle(color: light? Colors.white : Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text(light? 'thx for using dark mode' : 'usee dark modeee!!' ,style: TextStyle(color: light?Colors.white : Colors.black ),),
        ),
        ),
      )
       
      );
  }
}
