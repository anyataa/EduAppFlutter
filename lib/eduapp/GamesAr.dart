import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class GamesAr extends StatefulWidget {
  static String id = 'Ar_Screen';
  @override
  _GamesArState createState() => _GamesArState();
}

class _GamesArState extends State<GamesAr> {
  ARKitController arkitController;

  @override
  void dispose() {
    arkitController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('EduApp Augmented Reality')),
      body: ARKitSceneView(onARKitViewCreated: onARKitViewCreated));

  void onARKitViewCreated(ARKitController arkitController) {
    this.arkitController = arkitController;
    final node =
        ARKitNode(geometry: ARKitSphere(radius: 0.1), position: Vector3.zero());
    this.arkitController.add(node);
  }
}
