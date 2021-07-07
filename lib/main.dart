import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/background.png"),
        fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
      width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width+30,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/start.png"),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/logo.png",width: 110.0,height: 110.0),
                        Image.asset("assets/bike.png",width: 230.0,height: 230.0)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[ 
                      IconButton(icon: Icon(Icons.menu), onPressed: null,
                      iconSize: 30.0,
                      color: Colors.black,),
                      Row(
                    children:<Widget>[
                      IconButton(icon:Image.asset('assets/Person.png'), onPressed: null,
                      iconSize: 30.0,
                      ),
            
                    ]
                  ),
            
                    ]
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:15,right:25),
                  child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/back.png"),
       fit: BoxFit.contain )),
           child: Padding(
             padding: const EdgeInsets.all(5.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Image.asset("assets/sameDay.png",height: 35.0,),
                 Text('Same Day',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black87)),
               ],
             ),
           ),
                    height:80.0,
                    width: 80.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15,left: 25),
                  child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/back.png"),
       fit: BoxFit.contain )),
           child: Padding(
             padding: const EdgeInsets.only(top: 6,right: 8,left: 8,bottom: 1),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Image.asset("assets/panIndia.png",height: 35.0,),
                 Text('Pan India\n  Courier',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black87)),
               ],
             ),
           ),
                    height:80.0,
                    width:80.0,
                  ),
                )
              ],
            ),
                    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:15,right:25),
                  child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/back.png"),
       fit: BoxFit.contain )),
                     child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Image.asset("assets/bulk.png",height: 35,),
                 Text('Bulk',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black87)),
               ],
             ),
           ),
          height:80.0 ,
                    width: 80.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15,left:25),
                  child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/back.png"),
       fit: BoxFit.contain )),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Image.asset("assets/track.png",height: 35,),
                 Text('Tracking',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black87)),
               ],
             ),
           ),
                    height: 80.0,
                    width: 80.0,
                  ),
                )
              ],
            ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/add.png"),
       fit: BoxFit.fill )),
                    height: 125.0,
                    width: 210.0,
                  ),
                )
    
          ]
        ),
      ),
    );
  }
}
