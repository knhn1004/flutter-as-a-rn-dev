import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/models/category_collection.dart';
import 'package:flutter_as_a_rn_dev/screens/home/footer.dart';
import 'package:flutter_as_a_rn_dev/screens/home/grid_view_items.dart';
import 'package:flutter_as_a_rn_dev/screens/home/list_view_items.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String layoutType = 'grid';

  CategoryCollection categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if (layoutType == 'grid') {
                setState(() {
                  layoutType = 'list';
                });
              } else {
                setState(() {
                  layoutType = 'grid';
                });
              }
            },
            child: Text(layoutType == 'grid' ? 'Edit' : 'Done',
                style: const TextStyle(
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: layoutType == 'grid'
                    ? GridViewItems(categoryCollection: categoryCollection)
                    : ListViewItems(
                        categoryCollection: categoryCollection,
                      )),
            Footer(),
          ],
        ),
      ),
    );
  }
}