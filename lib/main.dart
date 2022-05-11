import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First Flutter App'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                print('Hello World');
              },
              child: Icon(Icons.add),
            ),
            body: Container(
                child: Center(
                    child: Directionality(
              textDirection: TextDirection.ltr,
              child: Text('Hello'),
            )))));
  }
}
