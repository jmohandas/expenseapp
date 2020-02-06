import 'package:flutter/material.dart';

import './widgets/transactionInput.dart';
import './widgets/transactionsList.dart';
import './models/transaction.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatefulWidget {
  @override
  _ExpenseAppState createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
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

  void startAddNewTransaction(BuildContext ctx) {
    print("Pressed the button");
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return TransactionInput(_addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => startAddNewTransaction(context),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
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
              TransactionsList(transactions),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => startAddNewTransaction(context),
          ),
        ),
      ),
    );
  }
}
