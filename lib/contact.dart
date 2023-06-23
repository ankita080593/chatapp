import 'package:flutter/material.dart';
import 'package:listapp/models/contactModal.dart';
import 'package:listapp/Newgroup.dart';

import 'save contact.dart';


class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
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
            ListTile(onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>save()));},leading: CircleAvatar(child: Icon(Icons.person_add,color: Colors.white,),backgroundColor: Colors.teal,radius: 20,),
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

  }
}
