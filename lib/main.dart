

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("THIS IS OUR FIRST ACTIVITY")));
          }, child: Text("Main Activity 1")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This Is our Second Activity")));
          }, child: Text("Main Activity 2")),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  String msg;
   Activity1(
       this.msg,
       {super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(msg),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2("This is our activity 1 to activity 2")));
        }, child: Text("Activity 2"),),
      ),



    );
  }
}

class Activity2 extends StatelessWidget {
    String msg;
   Activity2(
       this.msg,
       {super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(msg),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1("this is ourt activity 2 to activity 1")));
        }, child: Text("Activity 1"),),
      ),

    );
  }
}


