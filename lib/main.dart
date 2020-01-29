import 'package:flutter/material.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Text('Graphical View'),
            ),
            Card(
              child: Text('Graphical View'),
            ),
          ],
        ),
      )
    );
  }
}
