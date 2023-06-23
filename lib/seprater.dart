import 'package:flutter/material.dart';
void main(){
  runApp(Devider());
}
class Devider extends StatefulWidget {
  const Devider({Key? key}) : super(key: key);

  @override
  State<Devider> createState() => _DeviderState();
}

class _DeviderState extends State<Devider> {
  var friends=[
    'divya',
    'honey',
    'sohini',
    'neha',
    'sejal',
    'bhoomi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.separated(itemCount: friends.length, itemBuilder: (context,index){
      return Container(height: 40,color: Colors.amberAccent,
        child: Center(child: Text(friends[index],style:TextStyle(color: Colors.red
        ))),
      );
    },
    separatorBuilder:(context,index){
      return Divider(thickness: 20,color: Colors.blueGrey,);
    },)
    );
  }
}
