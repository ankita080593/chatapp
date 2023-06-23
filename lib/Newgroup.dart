import 'package:flutter/material.dart';
import 'package:listapp/models/contactModal.dart';
import 'package:listapp/pagegroup.dart';

import 'customDesign/contactcard.dart';
class new1 extends StatefulWidget {
  const new1({Key? key}) : super(key: key);

  @override
  State<new1> createState() => _new1State();
}

class _new1State extends State<new1> {

  List<contactModal> group=[];

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
        SizedBox(width:150,child: Text('New group')),
        SizedBox(width:150,
            child: Visibility(visible:group.length>0 ,
                replacement:Text(style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,),'Add particiipants') ,
                child: Text(style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,),'${group.length} of ${friends.length}'))),
      ],
    ),

      actions: [
          SizedBox(width:50,child: Icon(Icons.search,color: Colors.white,)),

      ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Visibility(
              visible: group.length>0,
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: friends.length,
                        itemBuilder: (context,index){
                      if(friends[index].isselected==true){
                        return InkWell(
                          child: SizedBox(width: 80,
                            child: Column(
                              children: [
                                ListTile(onTap:(){
                                  setState(() {
                                    group.remove(friends[index]);
                                    friends[index].isselected=false;

                                  });
                                } ,
                                        leading:Stack(children: [CircleAvatar(backgroundImage: AssetImage(friends[index].image??''),),
                                        Positioned(right: -2,bottom: -2,child: Icon(Icons.cancel_rounded,color: Colors.redAccent,)
                                        )]
                                        ),
                                  ),
                                Text(friends[index].title??''),
                              ],
                            ),
                          ),
                        );

                      }else{
                        return Container(width: 1,);
                      }
                    }),
                  ),
                  Divider(thickness: 3,)
                ],
              ),
            ),
            SizedBox(height: 400,
              child: ListView.builder(

                  itemCount:friends.length,
                  itemBuilder: (context,index){
                    return InkWell(
                        child: contactCard(contactmodal:friends[index]),
                          onTap: (){
                          if(friends[index].isselected==true){
                            setState(() {
                              group.remove(friends[index]);
                              friends[index].isselected=false;
                            });
                          }else{
                            setState(() {
                              group.add(friends[index]);
                              friends[index].isselected=true;
                            });
                          }
                          ;
                          },
                    );
                  }
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.teal,child: Icon(Icons.east_rounded),
      onPressed: (){
        if(group.length>1){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>pagegroup()));
        }else{
          Text('At list 1 contact must beselected');
        }
      },),
    );

  }
}
