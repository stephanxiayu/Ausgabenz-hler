import 'package:ausgabenplaner/model/transaction.dart';
import 'package:ausgabenplaner/transaction_list.dart';
import 'package:ausgabenplaner/widget/newtransaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: "Neue Schuhe",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Neue Elefanten",
      amount: 99969.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        title: txTitle);

    _userTransactions.add(newTx);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_userTransactions),
      ],
    );
  }
}
