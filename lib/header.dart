import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatefulWidget {
  const Header({
    super.key,
    required this.selectedItems,
  });

  final List<ChoiceItem> selectedItems;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<ChoiceItem> chooseItems = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.deepPurpleAccent,
      child: headerContent(),
    );
  }

  Widget headerContent() {
    if (widget.selectedItems.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(left: 5.0),
        child: Text(
          'Cliquez sur les choix en dessous !',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
    }
    return Container(
      width: double.maxFinite,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 5,
          children: widget.selectedItems.map((item) {
            return ChoiceItem(
              itemName: item.itemName,
              itemColor: getItemsColor(item),
            );
          }).toList(),
        ),
      ),
    );
  }

  Color getItemsColor(ChoiceItem item){
    return Colors.grey;
  }
}
