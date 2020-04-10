import 'package:flutter/material.dart';
import 'package:torch/torch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          title: Text("FLASHLIGHT",
          style: TextStyle(letterSpacing: 5),),
        ),
        body: RunApp(),
      ),
    );
  }
}

class RunApp extends StatefulWidget {
  @override
  _RunAppState createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  String button ="on";



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            child: Image.asset("images/$button.png"),
            onPressed: (){
              setState(() {
                if(button=="off") {
                  Torch.turnOff();
                  button = "on";
                }
                else {
                  button = "off";
                  Torch.turnOn();
                }
              });
            },

        ),
      ],
    );
  }
}
/* if(button=="on") {
                  Torch.turnOff();
                  button = "off";
                }
                else {
                  button = "on";
                  Torch.turnOn();
                }

 */
