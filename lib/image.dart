import 'package:flutter/material.dart';
import 'package:listapp/calls.dart';
import 'package:listapp/chat.dart';

void main() {
  runApp(const ImageA());
}

class ImageA extends StatefulWidget {
  const ImageA({Key? key}) : super(key: key);

  @override
  State<ImageA> createState() => _ImageAState();
}

class _ImageAState extends State<ImageA> {
  var friends = [
    'divya',
    'honey',
    'sohini',
    'neha',
    'sejal',
    'bhoomi',
  ];
var pages=[
  chat(),
  Text('status'),
  number(),
  ];
var current_index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Whatsup'),
        ),
       body:Center(
         child: pages[current_index],
       ),

       bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.brown,
        currentIndex: current_index,
        onTap: (index){
         setState(() {
           current_index=index;
         });
        },
        items:[
          BottomNavigationBarItem(
        icon:Icon(Icons.home),
    label:'Home',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.add_circle),
    label:'status',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.call),
    label:'calls',
    ),

   /* ListView.builder(
          itemCount: friends.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                radius: 40,
                child: Container(
                  width: 30,
                  child: Image.network(
                      'https://media.istockphoto.com/id/1427249962/photo/tropical-leaves-abstract-green-leaf-texture-in-garden-nature-background.jpg?s=1024x1024&w=is&k=20&c=VWXX_JAR_4uc7bNmWVHDtYcyNUY26Z3oPyjJnNtk3x8='),
                ),),
              title: Text('$index' + friends[index]),
              subtitle: Text('seen'),
              trailing: IconButton(
                onPressed: () {
                  print(index);
                },
                icon: Icon(Icons.search),
              ),
            );

          },
        ),*/
    ],
       ),
    );

  }
}
