import'package:flutter/material.dart';
void main(){
  runApp(const My());
}
class My extends StatefulWidget {
  const My({Key? key}) : super(key: key);

  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Row(
            children: [SizedBox(
              width: 40,),
              TextButton(onPressed: (){
              print('ankita');

        }, child: Text('puss'),
              ),
            ],
          ),
          Row(
            children: [SizedBox(width: 40,),
              ElevatedButton(onPressed: (){

              }, child:Icon(Icons.account_balance_sharp),),
    ],
          ),
          Container(
            // margin: EdgeInsets.only(top:30),
            child: ListTile(leading:CircleAvatar(
                radius: 50,
             backgroundColor: Colors.amberAccent,
             child:Container(
               height:50,
               width: 50,
               child:Image.asset('assets/images/lioness-7560708__340.jpg'
    ),

             )
            ),
     title: Text('Ankita'),
            subtitle: Text('seen'),
            trailing: IconButton(onPressed: (){
            },
            icon: Icon(Icons.more_vert),),),
          ),
        ],
      ),
             );
  }
}
