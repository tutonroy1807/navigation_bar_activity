

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainActivity(),
    );
  }
}

class MainActivity extends StatelessWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1()));
          }, child: Text("Main Activity 1")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2()));
          }, child: Text("Main Activity 2")),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  const Activity1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ACTIVITY 1"),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2()));
        }, child: Text("Activity 2"),),
      ),



    );
  }
}

class Activity2 extends StatelessWidget {
  const Activity2({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ACTIVITY 2"),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1()));
        }, child: Text("Activity 1"),),
      ),

    );
  }
}


