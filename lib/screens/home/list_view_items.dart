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
    return ReorderableListView(
      onReorder: ((int oldIndex, int newIndex) {
        //print('reordered list')
        if (newIndex > oldIndex) {
          newIndex -= 1;
        }
        final item = widget.categoryCollection.removeItem(oldIndex);
        setState(() {
          widget.categoryCollection.insert(newIndex, item);
        });
      }),
      children: widget.categoryCollection.categories
          .map(
            (cat) => ListTile(
              onTap: () {
                // toggle checkbox
                setState(() {
                  cat.toggleCheckbox();
                });
              },
              key: UniqueKey(),
              tileColor: Colors.grey[800],
              leading: Container(
                  decoration: BoxDecoration(
                    color:
                        cat.isChecked ? Colors.blueAccent : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: cat.isChecked ? Colors.blueAccent : Colors.grey,
                        width: 2),
                  ),
                  child: Icon(
                    Icons.check,
                    color: cat.isChecked ? Colors.white : Colors.transparent,
                  )),
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
