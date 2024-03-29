import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenios/src/pages/home_page.dart';
import 'package:disenios/src/pages/botones_page.dart';
import 'package:disenios/src/pages/basico_page.dart';
import 'package:disenios/src/pages/scroll_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.white
    // ));
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: '/',
      routes: {
        '/'  : (BuildContext context) => HomePage(),
        'basico'  : (BuildContext context) => BasicoPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },
    );
  }
}