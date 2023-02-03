import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transection_form.dart';
import '../models/transaction.dart';

class TransectionUser extends StatefulWidget {
  const TransectionUser({super.key});

  @override
  State<TransectionUser> createState() => _TransectionUserState();
}

class _TransectionUserState extends State<TransectionUser> {

    final _transactions = [
    Transaction(
      id: '1',
      title: "PC",
      value: 2200,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),
        Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),
        Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),
        Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),
        Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),    Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),    Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),    Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),    Transaction(
      id: '2',
      title: "Monitor",
      value: 150,
      date: DateTime.now(),
    ),
  ];

  _addTranscation(String title, double value)
  {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), 
      title: title, 
      value: value, 
      date: DateTime.now(),
    );

    setState((){
      _transactions.add(newTransaction);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTranscation),
        TransactionList(_transactions),
      ]
    );
  }
}