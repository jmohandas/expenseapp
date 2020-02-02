import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transactionInput.dart';
import './transactionsList.dart';

class CombinedListAndInput extends StatefulWidget {
  @override
  _CombinedListAndInputState createState() => _CombinedListAndInputState();
}

class _CombinedListAndInputState extends State<CombinedListAndInput> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Netflix',
      cost: 19.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly shopping',
      cost: 45.68,
      time: DateTime.now(),
    ),
  ];

  _addNewTransaction(String title, double cost) {
    DateTime time = DateTime.now();
    Transaction newTransaction = Transaction(
      id: time.toString(),
      title: title,
      cost: cost,
      time: time,
    );
    setState(() {
      transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionInput(_addNewTransaction),
        TransactionsList(transactions),
      ],
    );
  }
}