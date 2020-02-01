import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  String title;
  double cost;
  DateTime time;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.cost,
    @required this.time,
  });
}
