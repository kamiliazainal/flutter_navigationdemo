import 'package:flutter/material.dart';
import 'package:navigationdemo/screen1.dart';
import 'package:navigationdemo/screen2.dart';
import 'package:navigationdemo/screen3.dart';
 
void main() => runApp(MyApp());

//root class @ primary class 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Screen1(),
      routes: <String, WidgetBuilder>{
        //Nama jalan dan Jalan dia
        'screen1': (context) => Screen1(),
        'screen2': (context) => Screen2(),
        'screen3': (context) => Screen3(),
      },
    );
  }
}

//Secondary class
// class Abc extends StatelessWidget {
//    Abc({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(child: Text('Hello World'),),
//     );
//   }
// }