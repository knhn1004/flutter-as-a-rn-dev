import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_as_a_rn_dev/common/widgets/category_icon.dart';
import 'package:flutter_as_a_rn_dev/models/category.dart';

class CategoryCollection {
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
}
