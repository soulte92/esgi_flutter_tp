import 'package:flutter/material.dart';
import 'package:flutter_tp_note/choice_item.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  List<ChoiceItem> items = [
    ChoiceItem(
      itemName: 'cinema',
    ),
    ChoiceItem(
      itemName: 'petanque',
    ),
    ChoiceItem(
      itemName: 'fitness',
    ),
    ChoiceItem(
      itemName: 'League Of Legend',
    ),
    ChoiceItem(
      itemName: 'basket',
    ),
    ChoiceItem(
      itemName: 'shopping',
    ),
    ChoiceItem(
      itemName: 'programmation',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 5,
          children: items.map((item) => ChoiceItem(
                itemName: item.itemName
              )).toList(),
        ),
      ),
    );
  }
}
