import 'dart:math';

import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Café',
      value: 35.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Pão',
      value: 12.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Leite',
      value: 8.99,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), 
      title: title, 
      value: value, 
      date: DateTime.now(),
      );

      setState(() {
        _transactions.add(newTransaction);
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transactions: _transactions),
        TransactionForm(onsubmit: _addTransaction),
      ],
    );
  }
}