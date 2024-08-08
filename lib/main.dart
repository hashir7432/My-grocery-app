import 'package:flutter/material.dart';

final _lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        bodyMedium: TextStyle(
      color: Colors.black,
    )));
final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
        bodyMedium: TextStyle(
      color: Colors.white,
    )));
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switchValue ? _lightTheme : _darkTheme,
      home: Scaffold(
        backgroundColor: _switchValue ? Colors.white : Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Dark Theme",
                style: TextStyle(fontSize: 30),
              ),
              Switch(
                value: _switchValue,
                activeColor: Colors.white,
                activeTrackColor: Colors.black,
                onChanged: (Newvalue) {
                  setState(() {
                    _switchValue = Newvalue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
