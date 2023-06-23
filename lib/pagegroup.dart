import 'package:flutter/material.dart';
class pagegroup extends StatefulWidget {
  const pagegroup({Key? key}) : super(key: key);

  @override
  State<pagegroup> createState() => _pagegroupState();
}

class _pagegroupState extends State<pagegroup> {
  TextEditingController text=TextEditingController();
  var a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Column(
      children: [
        Text('New group'),
        SizedBox(width:100,child: Text('Add subject',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),)),
      ],
    ),
    ),
    body: Column(
      children: [
        Container(decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [SizedBox(width: 20,height: 100,),
              CircleAvatar(child:Icon(Icons.camera_alt,color: Colors.white,),backgroundColor: Colors.black26,radius: 30,),
              SizedBox(width: 10,),
              SizedBox(width: 250,
                child: TextFormField(controller:text,
                    cursorColor: Colors.teal,
                    cursorHeight: 30,
                    decoration: InputDecoration(
                    hintText: 'Type group subject here...'
                    ),),
              ),

           SizedBox(width:50,child: Icon(Icons.emoji_emotions_outlined,color: Colors.black38,size: 28,)) ],
          ),
        ),
    SizedBox(height:10,),
     Container(height:50,width:500,decoration: BoxDecoration(color: Colors.white),
     child:Row(
       children: [
         SizedBox(width: 200,
           child: Column(
             children: [
                Text('Disappearing messages'),
                SizedBox(width:150,child: Text('Off',style: TextStyle(color: Colors.black38),))
             ],
           ),
         ),
         SizedBox(width: 150,),
         Icon(Icons.av_timer)
       ],
     ),),

    //Text('Participants:$a',style:TextStyle(color: Colors.black38),)
      ],
    ),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.check),backgroundColor:Colors.green,onPressed: (){

      },),
    );
  }
}
