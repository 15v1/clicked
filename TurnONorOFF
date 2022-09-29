class Light extends StatefulWidget{
  const Light({super.key});

  State<StatefulWidget>createState(){
    return On();
  }
}
class On extends State<Light>{  
  bool light=false;
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return  MaterialApp(
      home:Scaffold(
        backgroundColor: light?Colors.white :Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sunny,
                color: light? Colors.amber[500] : Colors.black,
                size: 60,
              ),
              Icon(
                Icons.nights_stay,
                color: light? Colors.white : Colors.white,
                size: 60,                
              ),
              SizedBox(height: 50,),
              GestureDetector(
                child: Text(light? 'night?' : 'sunny?', style: TextStyle(color: light?Colors.black : Colors.white), ),
                onTap: (() {
                  setState(() {
                    light=!light;
                  });
                }),
              )
              


            ],
          ),
        ),
      ),
    )
    );
  }
}
