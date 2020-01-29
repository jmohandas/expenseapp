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
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Graphical View'),
                elevation: 5,
                color: Colors.blue
              ),
            ),
            Card(
              child: Text('List of transactions'),
            ),
          ],
        ),
      )
    );
  }
}
