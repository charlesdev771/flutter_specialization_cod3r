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
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(),
      ]
    );
  }
}