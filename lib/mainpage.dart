import 'package:flutter/material.dart';
import 'package:listapp/calls.dart';
import 'package:listapp/chat.dart';
import 'package:listapp/status.dart';
import 'package:listapp/grops.dart';
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(length: 4,
        child: Scaffold(/*appBar: AppBar(
          title: Text('whatsup'),
          actions: [Row(
            children: <Widget>[
              Icon(Icons.camera_alt_outlined),
            SizedBox(width: 10,),
            Icon(Icons.search),
            PopupMenuButton(icon:Icon(Icons.more_vert),itemBuilder:(context)=>[
              PopupMenuItem(child:Text('new group')),
               PopupMenuItem(child: Text('new broadcast')) ,
               PopupMenuItem(child:Text('Linked devices') ) ,
                PopupMenuItem(child: Text('starred messages')),
                PopupMenuItem(child: Text('payments')),
              PopupMenuItem(child: Text('settings')),
            ]

             ),
            ],
          )],
          bottom: TabBar(tabs: [
            Icon(Icons.people),
            Row(
              children: [
                const Text('chat'),
                DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),child:Text('24',style:TextStyle(color: Colors.green))),

              ],
            ),
            Row(
              children: [
                Text('status'),
                Icon(Icons.circle_rounded,size:10,),],
            ),

            Text('calls'),
          ],),),*/
        body: TabBarView(children: [
          groups(),
          chat(),
          status(),
          number(),
        ],),
                  ),

        );
  }
}
