import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_inspector_ai/view/screens/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: ()=>HomePage())],
    );
  }
}
File? myFile;
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return ;}}

// class ControllerClass extends StatefulWidget{
//   const ControllerClass({super.key});

//   static show(context){
//     showModalBottomSheet(context: context, builder: (_){
//       return Container(
//         decoration: BoxDecoration(image:myFile!=null?DecorationImage(image: FileImage(myFile!)):null),
//         height: 70,
//         padding: const EdgeInsets.all(8.0),
//         child:  Row(
//           children: [
//             Expanded(child: InkWell(
//               onTap: ()async{
//                 XFile? xfile = await ImagePicker().pickImage(source: ImageSource.camera);
//                 myFile = File(xfile!.path);
//                 Navigator.of(context).pop();
//               },
//               child: const Column(children: [
//                 Icon(Icons.camera_outlined),
//                 Text("Camera"),
//               ],),
//             )),
//             Expanded(child: InkWell(
//               onTap: ()async{
//                 XFile? xfile = await ImagePicker().pickImage(source: ImageSource.gallery);
//                 myFile = File(xfile!.path);
//                 Navigator.of(context).pop();
//                 print(myFile.toString());

//               },
//               child: const Column(children: [
//                 Icon(Icons.photo_outlined),
//                 Text("Gallary"),
//               ],),
//             )),
//           ],),
//       );
//     });
//   }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
