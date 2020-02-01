import 'package:flutter/material.dart';

import './widgets/transactionInput.dart';
import './widgets/transactionsList.dart';

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
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
                child: Text('Graphical View'),
                elevation: 5,
                color: Colors.blue),
          ),
          TransactionInput(),
          TransactionsList(),
        ],
      ),
    ));
  }
}
