import 'package:flutter/material.dart';
void main(){
  runApp(const List());
}
class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  var days=[
    'january',
    'february',
    'march',
    'April',
    'May',
    'June',
    'julai',
    'August',
    'september',
    'octomber',
    'november',
    'december',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
          itemCount:days.length,
          itemBuilder: (context,index){
        return Container(height: 40,child:Text("$index" +days[index]) );
      })
        //ListView(children:[
        //ListTile(title:Text('plus')),
        //ListTile(title:Text('minus')),
        //ListTile(title:Text('into')),
        //ListTile(title:Text('devide')),
  //]),
    );
  }
}
