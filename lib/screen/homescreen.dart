import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List pages=[
  Home(),
  Container(
    child: Text("Setting"),
  )
];
int index=0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Settings"),
        ],
        onTap:(currentindex){
          setState(() {
            index=currentindex;
          });
        },
        ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
String buttonlable="ON";
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/Group.png")),
              Positioned(
              bottom: 200,
              right: 0,
              child: Image.asset("assets/2.png")),
              Positioned(
              bottom: -40,
              left: 0,
              child: Image.asset("assets/1.png")),
            Positioned(
              top: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[Text("Welcome Back,",
                style: TextStyle(color: Colors.white,fontSize: 25),
                ),
                Text("Admin !",
            style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
            )]
              ),
            ), 
              Positioned(
                top:MediaQuery.of(context).size.height/2.4,
                child:Container(
                  width: 70,
                  height: 130,
                  child: ElevatedButton(onPressed: (){
                    setState(() {   
                    buttonlable=="ON"?buttonlable="OFF":buttonlable="ON";
                    });
                  },child: Text(buttonlable),))
                )
          ],
        ),
      );
  }
}
