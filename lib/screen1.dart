import 'package:flutter/material.dart';
import 'package:navigationdemo/screen2.dart';
import 'package:navigationdemo/student.dart';

class Screen1 extends StatelessWidget {
  //declare & by default ambil value string
  final namaController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen 1'),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5.0)),
                          hintText: 'Type nama',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                  
                ),
                controller: namaController,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5.0)),
                          hintText: 'Type email',
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                  
                ),
                controller: emailController,),
              ),
              RaisedButton(
                  child: Text('Go to Screen 2'),
                  onPressed: () {
                    print(namaController.text);
                    print(emailController.text);
                    // Navigator.pushNamed(context, 'screen2');
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => 
                    Screen2( objecttopass: Student(namaController.text, emailController.text),) ) );
                    //Screen2( objecttopass: namaController.text, objecttopass2: emailController.text,) ) );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
