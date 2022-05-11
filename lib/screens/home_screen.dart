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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(height: 100, color: Colors.orange),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {},
                      label: Text('New Reminder'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Add List'),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
