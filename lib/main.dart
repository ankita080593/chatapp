import 'package:flutter/material.dart';
import 'package:listapp/aa.dart';
import 'package:listapp/ch/name.dart';
import 'package:listapp/chat.dart';
import 'package:listapp/click.dart';
import 'package:listapp/image.dart';
import 'package:listapp/io.dart';
import 'package:listapp/listviewbuilder.dart';
import 'package:listapp/listview.dart';
import 'package:listapp/mainpage.dart';
import 'package:listapp/seprater.dart';
import 'package:listapp/calls.dart';
import 'package:listapp/status.dart';
import 'package:listapp/pages/home1.dart';
import 'package:listapp/test.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:camera/camera.dart';

var _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: mainpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  late CameraController controller;

  var camera_index=0;
  var showrear = true;
  var showflash=false;

  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            break;
          default:
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  //bool isbuttonselected=false;

  var currnetcamerastatus = 1;
  var isshow = false; // 1 for camera and 2 for video

  void initstate() {
    super.initState();

    setState(() {
      currnetcamerastatus = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: Stack(children: [
        CameraPreview(controller),
        Positioned(
            top: 50,
            left: 10,
            child: Container(
                child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.transparent),onPressed: () {},child: Icon(Icons.close, color: Colors.white, size: 25)))),
        Positioned(
          top: 50,
          right: 10,
          child: Container(
              child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.transparent),onPressed: () {},
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              onPressed: (){
                if(showflash==true){
                  setState(() {
                    showflash = !showflash;
                    controller.setFlashMode(FlashMode.off);
                  });
                }else {
                  setState(() {
                    showflash = !showflash;
                    controller.setFlashMode(FlashMode.torch);
                  });
                }
              },
              child: Icon(
                showflash?Icons.flash_on: Icons.flash_off,
                color: Colors.white,
              ),
            ),
          )),
        ),
        Positioned(
          top: 50,
          left: 170,
          child: Visibility(visible: isshow,
            child: Text(
              "00:00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
        Positioned(
            bottom: 100,
            left: 10,
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: Icon(
                  Icons.image,
                  color: Colors.white,
                ),
              ),
            )),
        Positioned(
            bottom: 100,
            left: 150,
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () async {
                  final path = await join((await getTemporaryDirectory()).path,
                      '${DateTime.now()}.png');
                  XFile picture = await controller.takePicture();
                  picture.saveTo(path);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => click(
                                path: path,
                              )));
                },
                child: Visibility(visible: isshow,
                  replacement: Icon(Icons.radio_button_on_rounded,color: Colors.white,size: 100,),
                  child: Icon(
                    Icons.adjust_rounded,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
            )),
        Positioned(
          bottom: 100,
          right: 10,
          child: Container(
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              onPressed: () {
                if(showrear==true){
                  setState(() {
                    camera_index=0;
                    showrear=!showrear;
                  });
                }else{
                  setState(() {
                    camera_index=1;
                    showrear=!showrear;

                  });

                }
                controller = CameraController(_cameras[camera_index], ResolutionPreset.max);
                controller.initialize().then((_) {
                  if (!mounted) {
                    return;
                  }
                  setState(() {
                  });
                }).catchError((Object e) {
                  if (e is CameraException) {
                    switch (e.code) {
                      case 'CameraAccessDenied':
                        break;
                      default:
                        break;
                    }
                  }
                });

              },
              child: Icon(
                Icons.flip_camera_android,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 210,
          child: Container(
            height: 100,
            width: 1000,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(height: 10, width: 90, color: Colors.white),
                );
              },
            ),
          ),
        ),
        // child: Container(
        //   height: 80,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //     itemCount: 1,
        //       itemBuilder: (context,items){
        //             return Container(height: 80,width: 80,color: Colors.white,);
        //   }),
        // ),
        Positioned(
            bottom: 315,
            left: 190,
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: Icon(
                  Icons.minimize,
                  color: Colors.white,
                ),
              ),
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 80,
              width: 400,
              color: Colors.grey.shade900,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: currnetcamerastatus == 2
                                ? Colors.grey.shade800
                                : Colors.transparent,
                            shape: StadiumBorder()),
                        onPressed: () {
                          setState(() {
                            currnetcamerastatus = 2;
                            isshow=true;
                          });
                        },
                        child: Text(
                          'video',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: currnetcamerastatus == 1
                                ? Colors.grey.shade800
                                : Colors.transparent,
                            shape: StadiumBorder()),
                        onPressed: () {
                          setState(() {
                            currnetcamerastatus = 1;
                            isshow=false;
                          });
                        },
                        child: Text(
                          'photo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
      ]),
      debugShowCheckedModeBanner: false,
    );
  }
}
