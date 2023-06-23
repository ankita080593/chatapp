import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Mytestapp extends StatefulWidget {
  const Mytestapp({Key? key}) : super(key: key);

  @override
  State<Mytestapp> createState() => _MytestappState();
}

class _MytestappState extends State<Mytestapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GFIconButton(
            onPressed: null,
            icon: Icon(Icons.add),
          tooltip:'Clck Me'
        ),
      ),
    );
  }
}

