import 'package:flutter/material.dart';
import 'package:locale_observer/locale_observer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LocaleObserver(
      didChangeLocales: (BuildContext context, List<Locale> locales) {
        print("locales = ${locales}");
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Center(
            child: Text(''),
          ),
        ),
      ),
    );
  }
}
