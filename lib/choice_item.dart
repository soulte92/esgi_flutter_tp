import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem({
    super.key,
    required this.itemName,
  });

  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
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
    );
  }
}
