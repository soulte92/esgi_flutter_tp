import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatefulWidget {
  const Header({super.key});

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
    if (chooseItems.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(left: 10.0),
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
        padding: EdgeInsets.all(15),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 5,
          children: chooseItems,
        ),
      ),
    );
  }
}
