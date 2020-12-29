import 'package:flutter/material.dart';
import 'package:navigationdemo/student.dart';


class Screen2 extends StatefulWidget {
//declare key
  Screen2({Key key, this.objecttopass}) : super(key: key);
  //, this.objecttopass2

  final Student objecttopass;
  // final String objecttopass2;

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen 2'),
              Text(
                  //widget.objecttopass,  atau
                  'Nama: ${widget.objecttopass.nama}',
                  style: TextStyle(fontSize: 30)),
                  Text(
                  'Email: ${widget.objecttopass.email}',
                  style: TextStyle(fontSize: 30)),
              SizedBox(height: 30),
              RaisedButton(
                  child: Text('Go to Screen 3'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'screen3');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
