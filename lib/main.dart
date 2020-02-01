import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './models/transaction.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
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

  final titleController = TextEditingController();
  final costController = TextEditingController();

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
          Container(
            width: double.infinity,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                      contentPadding: EdgeInsets.all(10),
                    ),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Cost',
                      contentPadding: EdgeInsets.all(10),
                    ),
                    controller: costController,
                  ),
                  FlatButton(
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.purple),
                    ),
                    onPressed: () {
                      print('Title  : ${titleController.text}');
                      print('Cost   : ${costController.text}');
                    },
                  ),
                ],
              ),
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${tx.cost}',
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.time),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
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
