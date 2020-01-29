import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 9.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
                child: Text('Graphical View'),
                elevation: 5,
                color: Colors.blue),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(tx.cost.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(tx.title),
                        Text(tx.time.toString()),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    ));
  }
}
