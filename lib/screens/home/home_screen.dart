import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/models/category_collection.dart';
import 'package:flutter_as_a_rn_dev/screens/home/footer.dart';
import 'package:flutter_as_a_rn_dev/screens/home/grid_view_items.dart';
import 'package:flutter_as_a_rn_dev/screens/home/list_view_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Expanded(
              child: AnimatedCrossFade(
            firstChild: GridViewItems(
                categories: categoryCollection.selectedCategories),
            secondChild: ListViewItems(
              categoryCollection: categoryCollection,
            ),
            crossFadeState: layoutType == 'grid'
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
          )
              //layoutType == 'grid'
              //    ? GridViewItems(
              //        categories: categoryCollection.selectedCategories)
              //    : ListViewItems(
              //        categoryCollection: categoryCollection,
              //      )),
              ),
          const Footer(),
        ],
      ),
    );
  }
}
