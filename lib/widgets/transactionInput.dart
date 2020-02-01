import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final titleController = TextEditingController();
  final costController = TextEditingController();
  
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
    );
  }
}
