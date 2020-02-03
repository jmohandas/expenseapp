import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final titleController = TextEditingController();
  final costController = TextEditingController();
  final Function addNewTransaction;

  TransactionInput(this.addNewTransaction);

  void submitAction() {
    String titleStr = titleController.text;
    String costStr = costController.text;
    double costDbl;

    if (titleStr.isEmpty || costStr.isEmpty) {
      return;
    }
    try {
      costDbl = double.parse(costStr);
    } catch (e) {
      return;
    }

    addNewTransaction(
      titleStr,
      costDbl,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onSubmitted: (_) => submitAction(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cost',
                contentPadding: EdgeInsets.all(10),
              ),
              controller: costController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitAction(),
            ),
            FlatButton(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: submitAction,
            ),
          ],
        ),
        elevation: 5,
      ),
    );
  }
}
