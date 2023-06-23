import 'package:flutter/material.dart';
import 'package:listapp/pages/about.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('home'),
    ),
    body: Center(
      child: ElevatedButton(
        child: Text('press'),onPressed: (){
          

          Navigator.push(context, MaterialPageRoute(builder:  (context)=>about()));
          // Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context)=>about()));
      },),
    ),);
  }
}
