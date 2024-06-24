import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test2/curd_opration/view/testApi.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const TestApi(),
    );
  }
}
