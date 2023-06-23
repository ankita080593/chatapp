import 'package:flutter/material.dart';
import 'package:listapp/models/contactModal.dart';
class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
 /* var friends=[
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
      image: 'assets/images/copy.jpg',
      subtitle: 'few minutes ago'
  ),
    contactModal(
      title: 'Honey',
      image:'assets/images/copy1.jpg',
        subtitle: 'few minutes ago'
    ),
    contactModal(
        title: 'Bhoomi',
        image: 'assets/images/copy2.jpg',
        subtitle: 'few minutes ago'
    ),
    contactModal(
        title: 'Neha',
        image: 'assets/images/copy3.jpg',
        subtitle: 'few minutes ago'
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return /*DefaultTabController(length: 4,
        child:*/ Scaffold(appBar: AppBar(
        title: Text('whatsup'),
    actions: [Row(
    children: <Widget>[
    Icon(Icons.camera_alt_outlined),
    SizedBox(width: 10,),
    Icon(Icons.search),
    PopupMenuButton(icon:Icon(Icons.more_vert),itemBuilder:(context)=>[
    PopupMenuItem(child: Text('status privacy')),
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
    body:SingleChildScrollView(scrollDirection: Axis.vertical,
    child:Column(
    children:<Widget> [ListTile(leading:CircleAvatar(
    backgroundImage:AssetImage('assets/images/imgankita.jpg'),
    radius:30,
    child:Container(height:80,width: 60,decoration:BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: Colors.red),
    ), child:const Icon(Icons.add_circle_outlined,color:Colors.green,size:20,),padding:const EdgeInsets.only(top: 30,left: 30), ),),
    title: Text('My status'),
    subtitle: Text('just now'),),
    SizedBox(width:300,child: Text('recent updates',)),
    // Divider(thickness: 2,),
    SizedBox(height:400,
    child:ListView.builder(
    itemCount:friends.length,
    itemBuilder: (context,index){
    return
    ListTile(leading: CircleAvatar(backgroundColor: Colors.green,
    radius: 30,
    backgroundImage: AssetImage(friends[index].image??''),

    ),
    title: Text(friends[index].title??''),
    subtitle: Text(friends[index].subtitle??''),
    );
    }
    ),
    ),  ],
    ),
    ),
    floatingActionButton:
    Column(
    children: [SizedBox(height:680),
    FloatingActionButton(
    child:Icon(Icons.edit),
    onPressed: (){
    Text('edit');
    }),
    FloatingActionButton(
    backgroundColor:Colors.green,
    child:Icon(Icons.camera_alt_outlined),
    onPressed: (){
    Text('message');
    },),],),
    //),
    );
    /*Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child:Column(
          children:<Widget> [ListTile(leading:CircleAvatar(
            backgroundImage:AssetImage('assets/images/imgankita.jpg'),
            radius:30,
            child:Container(height:80,width: 60,decoration:BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: Colors.red),
    ), child:const Icon(Icons.add_circle_outlined,color:Colors.green,size:20,),padding:const EdgeInsets.only(top: 30,left: 30), ),),
            title: Text('My status'),
            subtitle: Text('just now'),),
           SizedBox(width:300,child: Text('recent updates',)),
           // Divider(thickness: 2,),
            SizedBox(height:400,
              child:ListView.builder(
    itemCount:friends.length,
    itemBuilder: (context,index){
    return
     ListTile(leading: CircleAvatar(backgroundColor: Colors.green,
    radius: 40,
    child: Container(width: 40,
    child: Image.asset(images[index]),

    ),),
    title: Text(friends[index]),
    subtitle: Text('few minutes ago'),
    );
    }
    ),
            ),  ],
    ),
      ),
      floatingActionButton:
      Column(
        children: [SizedBox(height:550),
          FloatingActionButton(
              child:Icon(Icons.edit),
              onPressed: (){
                Text('edit');
              }),
          FloatingActionButton(
            backgroundColor:Colors.green,
            child:Icon(Icons.camera_alt_outlined),
            onPressed: (){
              Text('message');
            },),],),);*/
  }
}

