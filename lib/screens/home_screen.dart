import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Edit',
                style: TextStyle(
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Container(),
    );
  }
}
