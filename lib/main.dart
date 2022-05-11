import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.black,
        //appBarTheme: AppBarTheme(
        //  color: Colors.black,
        //),
        brightness: Brightness.dark,
      ),
    );
  }
}
