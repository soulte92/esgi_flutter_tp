import 'package:flutter/material.dart';
import 'package:flutter_tp_note/choice_item.dart';

class Footer extends StatefulWidget {
  const Footer({
    super.key,
    required this.onItemTap,
    required this.selectedItems,
    required this.items,
  });

  final Function(ChoiceItem) onItemTap;
  final List<ChoiceItem> selectedItems;
  final List<ChoiceItem> items;

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 5,
          children: widget.items.map((item) =>
              ChoiceItem(
                itemName: item.itemName,
                onTap: () {
                  widget.onItemTap(item);
                },
                itemColor: widget.selectedItems.contains(item)
                    ? Colors.orange
                    : Colors.grey,
              )
          ).toList(),
        ),
      ),
    );
  }
}
