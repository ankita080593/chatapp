import 'package:flutter/material.dart';
import 'package:listapp/Newgroup.dart';
import 'package:listapp/ch/name.dart';
import 'package:listapp/models/contactModal.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

import 'contact.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {

  List<Contact> contacts=[];
  bool isloaded=false;
  void getContacts() async{
    if(await Permission.contacts.isGranted){
      List<Contact> tmp_contacts = await ContactsService.getContacts( );
      setState(() {
        contacts=tmp_contacts;
      });
    }else{
      Permission.contacts.request();
    }

  }



  /*var friends = [
    'divya',
    'honey',
    'neha',
    'bhoomi',
  ];
  var images = [
    'assets/images/copy.jpg',
    'assets/images/copy1.jpg',
    'assets/images/copy3.jpg',
    'assets/images/copy2.jpg',
  ];*/


 /* List<contactModal>friends=[contactModal(
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
  ];*/

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContacts();
  }
  @override
  Widget build(BuildContext context) {
    //
    // InkWell(
    //   child: ,
    //   onTap: ,
    // )
    return /*DefaultTabController(length: 4,
      child:*/ Scaffold(appBar: AppBar(
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
        ],),),
         body: ListView.builder(
           itemCount: contacts.length,
           itemBuilder: (context, index) {
             return ListTile(
               leading:CircleAvatar(child: Text(contacts[index].initials())) ,
               title:Text(contacts[index].displayName.toString(),) ,
             );
            /* return ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (contex)=>name()));
                 },
                 leading: CircleAvatar(
                   backgroundColor: Colors.green,
                   radius: 30,
                   backgroundImage:AssetImage(friends[index].image??''),

                 ),
                 title: Text('$index' + (friends[index].title??'')),
                 subtitle: Text('seen'),
                 trailing: Column(
                   children: [
                     Text('10 pm'),
                     SizedBox(
                       height: 5,
                     ),
                     Container(
                       width: 22,
                       height: 22,
                       decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           color: Colors.green),
                       child: const Center(
                         child: Text(
                           '1',
                           style: TextStyle(
                               fontWeight: FontWeight.bold, color: Colors.white),
                         ),
                       ),
                     ),
                   ],
                 ));*/
             // onTap: () => Navigator.push(context,
             //    MaterialPageRoute(builder: (context) => route[index])));
           },
         ),




           floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.chat_outlined),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>contact()));

            },
          ),
          //groups(),
          //chat(),
          //status(),
          //number(),

      //),

    );
     /* body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (contex)=>name()));
            },
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 40,
                child: Container(
                  width: 30,
                  height: 50,
                  child: Image.asset(images[index]),
                ),
              ),
              title: Text('$index' + friends[index]),
              subtitle: Text('seen'),
              trailing: Column(
                children: [
                  Text('10 pm'),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.green),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ));
             // onTap: () => Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => route[index])));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.chat_outlined),
        onPressed: () {
          Text('message');
        },
      ),
    );*/
  }
 /*Widget contact(){
    return Scaffold(appBar: AppBar(title: Column(
      children: [SizedBox(width: 150,),
        Text('Select contact'),
      SizedBox(width:130,child: Text(style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,),'100 contacts')),
      ],
    ),

    actions: [Row(
      children: [
        Icon(Icons.search,color: Colors.white,),
        SizedBox(width:50,child: Icon(Icons.more_vert,color: Colors.white,))
      ],
    ),
    ],),
    body: SingleChildScrollView(
      child: Column(
        children: [
          ListTile(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (contex)=>new1()));
    },
            leading: CircleAvatar(child:Icon(Icons.people,color: Colors.white,),backgroundColor: Colors.teal,radius: 20,),
          title: Text('New group'),
          ),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person_add,color: Colors.white,),backgroundColor: Colors.teal,radius: 20,),
          title: Text('New contact'),
          trailing: Icon(Icons.qr_code),),
          SizedBox(height: 20,),
          SizedBox(width:350,child: Text('Contacts on WhatsApp',style: TextStyle(color:Colors.black54,fontWeight: FontWeight.bold
          ))),
          SizedBox(height: 400,
            child: ListView.builder(
                itemCount:friends.length,
                itemBuilder: (context,index){
                  return
                    ListTile(leading: CircleAvatar(backgroundColor: Colors.green,
                      radius: 30,
                        backgroundImage: AssetImage(friends[index].image??''),

                  ),
                      title: Text(friends[index].title??''),
                      subtitle: Text('few minutes ago'),
                    );
                }
            ),
          ),
        ],
      ),
    ),);

  }*/
}
