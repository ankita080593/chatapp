import 'package:flutter/material.dart';
import 'package:listapp/models/contactModal.dart';
import 'package:listapp/seprater.dart';

class save extends StatefulWidget {
  const save({Key? key}) : super(key: key);

  @override
  State<save> createState() => _saveState();
}
class _saveState extends State<save> {
  String? dropdownValue = 'Xiaomi Account';
  var isshow = false;
  var activeborder=0;
  String? selectedValue;//1 for active
  TextEditingController area = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController mobile= TextEditingController();
  TextEditingController work= TextEditingController();
  void initState() {
    super.initState();
        setState(() {
          activeborder = 0;
        });

  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 100,
                    width: 90,
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.close))),
                Text(
                  'Save to',
                  style: TextStyle(fontSize: 15),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: IconButton(
                      onPressed: () {
                        if(isshow==true){
                        setState(() {
                          isshow = false;
                        });
                      }else{
                          setState(() {
                            isshow=true;
                          });
                        }},
                      icon: Visibility(
                          visible: isshow,
                          replacement: Icon(Icons.arrow_drop_up),
                          child: Icon(Icons.arrow_drop_down))),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['Xiaomi Account', 'Google', 'Sim Card']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            //CircleAvatar(backgroundColor: Colors.primaries[3]),
                            Text(value),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.check,
                              size: 15,
                            )
                          ],
                        ));
                  }).toList(),
                ),
                SizedBox(width: 80, child: Icon(Icons.check)),
              ],
            ),
            SizedBox(height:80,
                width: 400,
                child: IconButton(onPressed:(){},
                  icon:Icon(Icons.account_circle,size: 75,color: Colors.black12),

              )),
            SizedBox(height: 40,),
            Container(
              height: MediaQuery.of(context).size.height / 14,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.black12,border: Border.all(color: Colors.black12,width: 1)),
              child:/*Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField<String>(
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: [
                      'FC Barcelona',
                      'Real Madrid',
                      'Villareal',
                      'Manchester City'
                    ]
                        .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    ))
                        .toList(),
                  ),
                ),
              ),*/


              TextFormField(
                onTap: (){

                },
                controller: area,
                decoration: InputDecoration(hintText: 'Name',border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 1),borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)),borderSide: BorderSide(color:Colors.black12,width: 1))),

              )


               // ),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 375,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.black12 ,
                  border: Border.all(color:activeborder==1?Colors.green:Colors.black26, width: 2)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    TextFormField(
                        controller: company,
                        onTap: (){
                          //focusNode.unfocus;
                          //focusNode.canRequestFocus=true;
                          setState(() {
                            activeborder=1;
                            isshow=true;


                          });
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintText: 'Company',
                            hintStyle: TextStyle(
                              color: Colors.black12,
                            ),
                            border: InputBorder.none)),
                    TextFormField(
                        controller: title,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintText: 'Title',
                            hintStyle: TextStyle(
                              color: Colors.black12,
                            ),
                            border: InputBorder.none)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),


            Container(
              // height: 50,
              width:MediaQuery.of(context).size.width-20 ,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black12,border: Border.all(color:activeborder==0?Colors.green:Colors.black26)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      'Mobile',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  SizedBox(
                      width: 20,
                      height: 60,
                      child: VerticalDivider(
                        thickness: 3,
                        color:Colors.black12,
                    )),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 210,
                      child: TextFormField(
                        onTap:(){
                          //focusNode1.unfocus;
                          //focusNode1.canRequestFocus=true;
                          setState(() {
                            activeborder=0;
                            isshow=false;
                          });
                        },
                           controller: mobile,
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(border: InputBorder.none,
                            hintText: 'Phone',
                            hintStyle: TextStyle(
                              color: Colors.black12,
                            ),
                            // border: OutlineInputBorder(
                            //     borderSide:
                            //         BorderSide(color: Colors.blueAccent, width: 5),
                            //     borderRadius: BorderRadius.all(Radius.circular(15)))
                            // ,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              // height: 50,
              width:MediaQuery.of(context).size.width-20 ,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black12,border: Border.all(color:activeborder==2?Colors.green:Colors.black26)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      'Work',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),

                  SizedBox(
                      width: 20,
                      height: 60,
                      child: VerticalDivider(
                        thickness: 3,
                        color:Colors.black12,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 210,
                      child: TextFormField(
                          onTap:(){
                            setState(() {
                              activeborder=2;
                              isshow=true;
                            });
                          },
                          controller: work,
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.black12,
                            ),
                            // border: OutlineInputBorder(
                            //     borderSide:
                            //         BorderSide(color: Colors.blueAccent, width: 5),
                            //     borderRadius: BorderRadius.all(Radius.circular(15)))
                            // ,
                          )),
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 50,
            //   width: 450,
            //   color: Colors.black12,
            //   child: TextFormField(
            //       controller: area,
            //       textAlignVertical: TextAlignVertical.center,
            //       decoration: InputDecoration(
            //           hintText: 'Name',
            //           hintStyle: TextStyle(
            //             color: Colors.black12,
            //           ),
            //           border: OutlineInputBorder(
            //               borderSide:
            //                   BorderSide(color: Colors.blueAccent, width: 5)),
            //           suffixIcon: Icon(
            //             Icons.arrow_drop_down_circle,
            //             color: Colors.black26,
            //           ))),
            // ),
          ]),
        ),
      ),
    );
  }
}
