import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionUser(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
      ],
    );
  }
}
