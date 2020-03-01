import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/Pages/Test.dart';
import 'package:test_flutter/Store/counter.dart';

void main() {
  runApp(MainApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<Counter>(create: (_) => Counter()),
        Provider<Counter>.value(value: Counter(),)
      ], 
      child: MaterialApp(
        title: 'Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light
        ),
        routes: {
          // '/': (_) => Consumer<Counter>(
          //   builder: (_, store, __) => Test(store),
          // ),
          '/': (_) => Test()
        },
      )
    );
  }
}