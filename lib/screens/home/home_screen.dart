import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/models/category_collection.dart';
import 'package:flutter_as_a_rn_dev/screens/home/footer.dart';
import 'package:flutter_as_a_rn_dev/screens/home/grid_view_items.dart';

class HomeScreen extends StatelessWidget {
  CategoryCollection categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Edit',
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
                child: GridViewItems(categoryCollection: categoryCollection)),
            Footer(),
          ],
        ),
      ),
    );
  }
}
