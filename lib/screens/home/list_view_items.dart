import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/models/category_collection.dart';

class ListViewItems extends StatefulWidget {
  final CategoryCollection categoryCollection;
  const ListViewItems({required this.categoryCollection});

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.categoryCollection.categories
          .map(
            (cat) => ListTile(
              tileColor: Colors.grey[800],
              leading: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check)),
              title: Row(
                children: [
                  cat.icon,
                  const SizedBox(width: 10),
                  Text(cat.name),
                ],
              ),
              trailing: const Icon(Icons.reorder),
            ),
          )
          .toList(),
    );
  }
}
