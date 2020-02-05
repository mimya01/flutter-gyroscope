import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter gyroscopeEvents Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _accelerometerEvents,_userAccelerometerEvents,_gyroscopeEvents;
  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      // print(event);
      setState(() {
        _accelerometerEvents=" X : "+event.x.toString()+" Y : "+event.y.toString()+" Z : "+event.z.toString();
      });
    });
    // [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]

    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
       setState(() {
        _userAccelerometerEvents=" X : "+event.x.toString()+" Y : "+event.y.toString()+" Z : "+event.z.toString();
      });
    });
    // [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]

    gyroscopeEvents.listen((GyroscopeEvent event) {
      // print(event);
       setState(() {
        _gyroscopeEvents=" X : "+event.x.toString()+" Y : "+event.y.toString()+" Z : "+event.z.toString();
      });
    });
    // [GyroscopeEvent (x: 0.0, y: 0.0, z: 0.0)]
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("accelerometerEvents : "+_accelerometerEvents,
            ),
            Text("userAccelerometerEvents : "+_userAccelerometerEvents,
            ),
            Text("gyroscopeEvents : "+_gyroscopeEvents,
            ),
          ],
        ),
      ),
    );
  }
}
