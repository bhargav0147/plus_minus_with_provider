import 'package:flutter/material.dart';
import 'package:plus_minus_with_provider/Counter/Provider/counter_provider.dart';
import 'package:plus_minus_with_provider/Counter/View/counter%20sccreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(ChangeNotifierProvider(
    create: (context) => CounterProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
      },
    ),
  ));
}