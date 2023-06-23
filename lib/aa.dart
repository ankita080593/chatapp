import 'package:flutter/material.dart';
class num extends StatefulWidget {
  const num({Key? key}) : super(key: key);

  @override
  State<num> createState() => _numState();
}

class _numState extends State<num> {
  var friends = [
    'divya',
    'honey',
    'neha',
    'bhoomi',
  ];
  var images=[
    'assets/images/copy.jpg',
    'assets/images/copy1.jpg',
    'assets/images/copy3.jpg',
    'assets/images/copy2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(appBar: AppBar(
        title: Text('whatsup'),
        actions: [Row(
          children: <Widget>[
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 10,),
            Icon(Icons.search),
            PopupMenuButton(icon:Icon(Icons.more_vert),itemBuilder:(context)=>[
              PopupMenuItem(child: Text('clear call log')),
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
        ],),),
        body:Column(
          children: [ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,
          radius: 40,
          child: Icon(Icons.link),),
          title: Text('creat call link'),
          subtitle:Text('share a link for your watsApp call') ,),
           SizedBox(width:320,child: Text('recent')),
           SizedBox(height:300,child: ListView.builder(
                itemCount:friends.length,itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 40,
                  child:Container(
                    width: 40,
                    child:Image.asset(images[index]) ,
                  ),
                ),
                title: Text(friends[index]),
                subtitle:Text('today'),
                trailing:IconButton(onPressed: (){
                  print(index);
                },
                  icon: Icon(Icons.video_call),)
                ,
              );
            }),),
          ],
        ),

        floatingActionButton:
        FloatingActionButton(
          backgroundColor:Colors.green,
          child:Icon(Icons.add_call),
          onPressed: (){
            Text('message');
          },),),);/*Scaffold(body:
    ListView.builder(
        itemCount:friends.length,itemBuilder: (context,index){
          return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 40,
            child:Container(
              width: 40,
              child:Image.asset(images[index]) ,
            ),
          ),
          title: Text(friends[index]),
          subtitle:Text('today'),
            trailing:IconButton(onPressed: (){
              print(index);
            },
            icon: Icon(Icons.video_call),)
            ,
          );
    }),

      floatingActionButton:
      FloatingActionButton(
        backgroundColor:Colors.green,
        child:Icon(Icons.add_call),
        onPressed: (){
          Text('message');
        },),);*/
  }
}
