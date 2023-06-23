import 'package:flutter/material.dart';
class groups extends StatefulWidget {
  const groups({Key? key}) : super(key: key);

  @override
  State<groups> createState() => _groupsState();
}

class _groupsState extends State<groups> {
  @override
  Widget build(BuildContext context) {
    return /*DefaultTabController(length: 4,
        child: */Scaffold(appBar: AppBar(
        title: Text('whatsup'),
    actions: [Row(
    children: <Widget>[
    Icon(Icons.camera_alt_outlined),
    SizedBox(width: 10,),
    Icon(Icons.search),
    PopupMenuButton(icon:Icon(Icons.more_vert),itemBuilder:(context)=>[

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
      children: [
        ListTile(
          leading:Container(
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius:BorderRadius.all(Radius.circular(10))

            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Stack(
                  children:[
                    Icon(
                      Icons.people,
                      size:40,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.add,size: 15,),
                      ),
                    )
                  ]
              ),
            ),
          ),
          title: Text('new group'),
        ),


        Divider(thickness: 5),
        ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/swans-7736415_960_720.jpg'),),
          title: Text('Art group'),
          subtitle: Row(
            children: [
              Text('+8469650456:'),
              Icon(Icons.picture_as_pdf),
              Text('ankita pdf')
            ],
          ),
          trailing: Text('21/5/23'),),
        Divider(thickness: 2,),
        ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img.jpg'),),
          title: Text('Computer group'),
          subtitle:Row(
            children: [
              Text('+8347831462:'),
              Icon(Icons.picture_as_pdf),
              Text('flutter pdf')
            ],
          ),
          trailing: Text('4/3/23'), ),
        Container(width:350,child: Text('>   view all')),
        Divider(thickness: 5,),
      ],
    ),
    //),
    );
    /*Scaffold(
          body: Column(
             children: [
               ListTile(
               leading:Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[400],
                   borderRadius:BorderRadius.all(Radius.circular(10))

                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(3.0),
                   child: Stack(
                       children:[
                         Icon(
                           Icons.people,
                          size:40,
                         ),
                         Positioned(
                           bottom: 0,
                           right: 0,
                           child: CircleAvatar(
                             radius: 8,
                             backgroundColor: Colors.red,
                             child: Icon(Icons.add,size: 15,),
                           ),
                         )
                       ]
                   ),
                 ),
               ),
               title: Text('new community'),
             ),


               Divider(thickness: 5),
               ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/swans-7736415_960_720.jpg'),),
                title: Text('Art group'),
                 subtitle: Row(
                 children: [
                   Text('+8469650456:'),
                   Icon(Icons.picture_as_pdf),
                   Text('ankita pdf')
                  ],
                  ),
                 trailing: Text('21/5/23'),),
                  Divider(thickness: 2,),
                  ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img.jpg'),),
                   title: Text('Computer group'),
                    subtitle:Row(
                     children: [
                     Text('+8347831462:'),
                     Icon(Icons.picture_as_pdf),
                     Text('flutter pdf')
                     ],
                     ),
                   trailing: Text('4/3/23'), ),
                    Container(width:350,child: Text('>   view all')),
                    Divider(thickness: 5,),
             ],
    ),
    );*/
  }
}
