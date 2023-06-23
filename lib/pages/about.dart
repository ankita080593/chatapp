import 'package:flutter/material.dart';
class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('about'),leading: Text("hello"),),
    body: ElevatedButton(child: Text('raised button'),onPressed:(){ Navigator.pop(context);},),);
  }
}
