import 'package:flutter/material.dart';
import 'package:r6s_stats/services/apiClass.dart';
import 'package:r6s_stats/pages/home.dart';
import 'package:r6s_stats/pages/type_name.dart';
import 'package:r6s_stats/pages/loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/load',
  routes: {
    '/load': (context) => Loading(),
    '/home': (context) => Home(),
    '/typename': (context) => Name(),
  },
));
