import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/models/category.dart';

class HomeScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(id: 'today', name: 'Today'),
    Category(id: 'scheduled', name: 'Scheduled'),
    Category(id: 'all', name: 'All'),
    Category(id: 'flagged', name: 'Flagged'),
  ];

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
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(10),
                    children: categories
                        .map(
                          (cat) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF1A191D)),
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.email),
                                          Text('0'),
                                        ],
                                      ),
                                      Text(cat.name),
                                    ])),
                          ),
                        )
                        .toList())),
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
