

import 'package:flutter/cupertino.dart';
import 'package:imc/ui/android/pages/home.page.dart';

class MyCupertinoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      title: "IMC",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}