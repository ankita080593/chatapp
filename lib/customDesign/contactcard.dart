import 'package:flutter/material.dart';
import 'package:listapp/models/contactModal.dart';

class contactCard extends StatelessWidget {
  const contactCard({Key? key,required this.contactmodal}) : super(key: key);
  final contactModal contactmodal;

  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        leading: Stack(
          children: [
            CircleAvatar(backgroundColor: Colors.green,
              radius: 30,
              backgroundImage: AssetImage(contactmodal.image??''),
              ),

              contactmodal.isselected?
              Positioned(
                right: 1,
                  bottom: 1,
                  child: CircleAvatar(
                       radius: 9,
                      backgroundColor: Colors.lightGreen,
                      child: Icon(Icons.check,size: 10,color: Colors.white,)
                  )
              ):Container(width: 10,)
          ],
        ),
          title: Text(contactmodal.title??''),
          subtitle: Text('few minutes ago'),
        );
  }
}
