// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Object Taxi;
  @override
  void initState() {
    Taxi = Object(fileName: "folder\taxi\taxi.obj");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("3D UI design"),
      ),
      // body: Container(
      //   child: Cube(
      //     onSceneCreated: (Scene scene) {
      //       scene.world.add(Taxi);
      //       scene.camera.zoom = 10;
      //     },
      //   ),
      // ),
      body: SizedBox(
        width: 400,
        height: 700,
        child: const WebView(
          initialUrl: 'https://app.vectary.com/p/1PWO9BflgMy2JOx9Bgl60h/',
          javascriptMode: JavascriptMode.unrestricted,
          zoomEnabled: true,
        ),
      )
    );
  }
}
