import 'package:flutter/material.dart';
import 'package:listapp/models/contactModal.dart';
class number extends StatefulWidget {
  const number({Key? key}) : super(key: key);

  @override
  State<number> createState() => _numberState();
}

class _numberState extends State<number> {
  /*var friends = [
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
  ];*/
  List<contactModal>friends=[contactModal(
      title: 'Divya',
      image: 'assets/images/copy.jpg'
  ),
    contactModal(
      title: 'Honey',
      image:'assets/images/copy1.jpg',
    ),
    contactModal(
        title: 'Bhoomi',
        image: 'assets/images/copy2.jpg'
    ),
    contactModal(
        title: 'Neha',
        image: 'assets/images/copy3.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
                  radius: 30,

                    backgroundImage:AssetImage(friends[index].image??'') ,

                ),
                title: Text(friends[index].title??''),
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
          },),);/*Scaffold(body:
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
