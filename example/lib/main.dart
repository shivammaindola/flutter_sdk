import 'package:flutter/material.dart';
import 'package:mirrar_sdk/mirrar_sdk.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String jsonData =
      "{\"options\": {\"productData\": {\"Necklaces\": {\"items\": [\"513319NDJAA40\"],\"type\": \"neck\"}}}}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Mirrar SDK'), backgroundColor: Colors.pink),
        body: Scaffold(
            body: SafeArea(
                child: Center(
                    child: Container(
                        width: 200,
                        height: 50,
                        child: RaisedButton(
                          child: Text("Launch Mirrar"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MirrarSDK(
                                          username: 'tanishqwebar',
                                          password: 'w4y0EihepyIAA50U',
                                          jsonObject: jsonData,
                                        )));
                          },
                          color: Colors.pink,
                          textColor: Colors.white,
                          splashColor: Colors.grey,
                        ))))));
  }
}
