import 'package:flutter/material.dart';
import 'package:world_time/classes/world_time.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  String time = 'loading';

  void setWorldTime() async {
    WorldTime instance = WorldTime(location: 'Lagos', flag: 'lagos.png', url: 'Africa/Nigeria');
   await instance.getTime();
   setState(() {
     time = instance.time;
   });
  } 

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding:EdgeInsets.all(50.0),
      child: Text(time),
      )
    );
  }
}