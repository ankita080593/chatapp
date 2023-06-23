// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:listapp/chat.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:listapp/main.dart';



class name extends StatefulWidget {
  const name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  /* var friends = [
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
TextEditingController textarea=TextEditingController();
FocusNode messagefocus=FocusNode();
FocusNode focusNode=FocusNode();
late bool hideemoji=true;
bool isShow=true;
  @override
   void initState(){
    super.initState();
    focusNode.addListener(() {
    if(focusNode.hasFocus){
      setState(() {
        hideemoji=true;
      });
    }else{
      setState(() {
        hideemoji=false;
      });
    }
    });

    textarea.addListener(() {
      if(textarea.text !=''){
        setState(() {
          isShow=false;
        });

      }else{
        setState(() {
          isShow=true;
        });
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: const AssetImage('assets/images/copy.jpg'),
            radius: 40,
            //child: Container(
            //width: 40,
            //height: 40,
          ), //),
          title: Column(
            children: [
              Text('divya'),
              Text(
                'online',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.videocam),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.call),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.more_vert),
                ),
              ],
            ),
          ]
          /*onTap: (){
            Navigator.pop(context,chat());
          },*/
          ),
      body:Container(height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
          ListView(),
            Align(alignment: Alignment.bottomLeft,
           child: WillPopScope(
             onWillPop:(){
               if(hideemoji==true){
                 Navigator.pop(context);
               }else{
                 setState(() {
                   hideemoji=!hideemoji;
                });
               }
               return Future.value();
             },
             child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Row(children: [
                Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),
                color: Colors.black12),
                  width: MediaQuery.of(context).size.width-50,
                  child: TextFormField(onTap: (){

                  },
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
                    controller:textarea,
                    textAlignVertical:TextAlignVertical.center,
                    focusNode: focusNode,
                    decoration:InputDecoration(
                      hintText: 'Messge',
                      contentPadding: EdgeInsets.only(left: 3,right: 3),
                      suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: (){
                              showModalBottomSheet(context: context, builder: (context)=>Bottommodal(),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
                            }, icon: Icon(Icons.attach_file)),
                           Visibility(visible: isShow,
                             child: IconButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>camera()));
                             }, icon: Icon(Icons.camera_alt)),
                           )
                          ],
                        ),

                      prefixIcon: IconButton(onPressed: (){
                        focusNode.unfocus();
                        focusNode.canRequestFocus=true;
                        setState(() {
                          hideemoji=!hideemoji;
                        }
                        );
                      },
                      icon: Icon(Icons.emoji_emotions),)
                    ),
                  ),
                ),
                 Visibility(visible: isShow,
                   replacement: CircleAvatar(child: IconButton(onPressed: (){},
                   icon: Icon(Icons.send),),),
                   child: CircleAvatar(
                     child: IconButton(onPressed: (){},
                     icon: Icon(Icons.mic),),
                   ),
                 )
               ],),
               MyEmoji()
             ],
             ),
           ),
            )
        ],),
      )
        ,
    );
  }
  Widget MyEmoji(){
    return Container(
      child: Offstage(offstage: hideemoji,
      child: SizedBox(
        width: MediaQuery.of(context).size.width-20,
        height: 200,
        child: EmojiPicker(
          textEditingController:textarea ,
        ),
      ),),
    );
  }

  Widget Bottommodal(){
    return Container(
           height: 350,
           width: MediaQuery.of(context).size.width/4,
                     child:Column(
                       children: [
                         Row(
                           children: [SizedBox(width: 50,),
                             Padding(
                               padding: const EdgeInsets.all(20),
                               child: Column(
                                 children: [
                                   CircleAvatar(child:Icon(Icons.description,color: Colors.white,size: 30,),backgroundColor: Colors.deepPurpleAccent,radius: 30,),
                                   Text('Document')],),
                             ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(child: Icon(Icons.camera_alt,color: Colors.white,size: 30,),backgroundColor: Colors.pinkAccent,radius: 30,),
                 Text('Camera') ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 children: [
                   CircleAvatar(child: Icon(Icons.photo,color: Colors.white,size: 30,),backgroundColor: Colors.purpleAccent,radius: 30,),
                 Text('Gallery')
                 ],
               ),
             )
        ],
      ),
           Row(
             children: [SizedBox(width: 50,),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Column(
                   children: [
                     CircleAvatar(child: Icon(Icons.headphones,color: Colors.white,size: 30,),backgroundColor: Colors.deepOrangeAccent,radius: 30,),
                   Text('Audio')
                   ],
                 ),
               ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(child: Icon(Icons.location_on,color: Colors.white,),backgroundColor: Colors.green,radius: 30,),
                Text('Location')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(child: CircleAvatar
                    (child:Icon(Icons.currency_rupee_rounded,size: 20,),radius: 13,backgroundColor: Colors.white,),backgroundColor: Colors.teal,radius: 30,),
                Text('Pyment')
                ],
              ),
            ) ],
           ),
                      Row(
                        children: [SizedBox(width: 50,),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 30,),backgroundColor: Colors.blue,radius: 30,),
                              Text('Contact')
                              ],
                            ),
                          ),
                       Padding(
                         padding: const EdgeInsets.all(20),
                         child: Column(
                           children: [
                             CircleAvatar(child: Icon(Icons.bar_chart,color: Colors.white,size: 30,),backgroundColor: Colors.teal,radius: 30,),
                           Text('Poll')
                           ],
                         ),
                       )
                        ],
                      )
                       ],
                     ),
    );

  }
}
