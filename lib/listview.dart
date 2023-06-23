import 'dart:ffi';

import 'package:flutter/material.dart';
void main(){
  runApp(const ListV());
}
class ListV extends StatefulWidget {
  const ListV({Key? key}) : super(key: key);

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [
      SizedBox(height: 10),
     Padding(padding: EdgeInsets.all(20),child:Text('plus')),
      Padding(padding:EdgeInsets.all(20),child:Text('minus')),
      Padding(padding: EdgeInsets.all(20),child:Text('into') ),
      Padding(padding: EdgeInsets.all(20),child: Text('devide')),
    ],),);
  }
}
