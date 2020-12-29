import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen '),
              RaisedButton(
                  child: Text('Go back Screen 1'),
                  onPressed: () {
                    // Navigator.pop(context); untuk back ke satu je page je
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'screen1', (route) => false);
                  }),
                  RaisedButton(
                  child: Text('Go back Screen 2'),
                  onPressed: () {
                    Navigator.pop(context); 
                    //untuk back ke satu je page je
                  })
            ],
          ),
        ),
      ),
    );
  }
}
