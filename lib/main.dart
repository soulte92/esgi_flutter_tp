import 'package:flutter/material.dart';
import 'package:flutter_tp_note/footer.dart';
import 'package:flutter_tp_note/header.dart';

import 'choice_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      home: const MyHomePage(
        title: 'Vos choix:',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  List<ChoiceItem> selectedItems = [];

  void onChoiceItemTap(ChoiceItem item) {
    setState(() {
      if (selectedItems.contains(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Header(
                selectedItems: selectedItems,
              ),
            ),
            Expanded(
              child: Footer(
                selectedItems: selectedItems,
                items: items,
                onItemTap: onChoiceItemTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
