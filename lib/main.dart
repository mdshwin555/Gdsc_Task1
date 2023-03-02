import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskgdsc/task2.dart';
import 'Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(                            //Sizer package for get highet & wedth of screen easy
      builder: (BuildContext, Orientation, DeviceType) => GetMaterialApp(    //GetX package
        debugShowCheckedModeBanner: false,
        home: Register(),
      ),
    );
  }
}
