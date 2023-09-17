import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  ChoiceItem({
    super.key,
    required this.itemName,
    this.onTap,
    this.itemColor = Colors.grey,
  });

  final String itemName;
  final VoidCallback? onTap;
  Color itemColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        color: itemColor,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            itemName,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
