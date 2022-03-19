import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sell_my_things/things_provider.dart';

import 'things_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => ThingsProvider()),
        ],
        child: MaterialApp(
          title: 'Sell my things',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Lato',
          ),
          home: const ThingsScreen(),
        ));
  }
}

