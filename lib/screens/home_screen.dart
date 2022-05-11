import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/models/category.dart';
import 'package:flutter_as_a_rn_dev/common/widgets/category_icon.dart';

class HomeScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(
        id: 'today',
        name: 'Today',
        icon: CategoryIcon(
          bgColor: CupertinoColors.systemBlue,
          iconData: CupertinoIcons.calendar_today,
        )),
    Category(
        id: 'scheduled',
        name: 'Scheduled',
        icon: CategoryIcon(
            bgColor: CupertinoColors.systemRed,
            iconData: CupertinoIcons.calendar)),
    Category(
        id: 'all',
        name: 'All',
        icon: CategoryIcon(
          bgColor: CupertinoColors.systemGrey,
          iconData: Icons.inbox_rounded,
        )),
    Category(
        id: 'flagged',
        name: 'Flagged',
        icon: CategoryIcon(
            bgColor: CupertinoColors.activeOrange,
            iconData: CupertinoIcons.flag_fill)),
  ];

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
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: const EdgeInsets.all(10),
                    children: categories
                        .map(
                          (cat) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF1A191D)),
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
                                          cat.icon,
                                          Text('0'),
                                        ],
                                      ),
                                      Text(cat.name),
                                    ])),
                          ),
                        )
                        .toList())),
            Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      icon: const Icon(Icons.add_circle),
                      onPressed: () {},
                      label: const Text('New Reminder'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Add List'),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
