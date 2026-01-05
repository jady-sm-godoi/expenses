
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(),);
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Transaction> transactions = [
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
    Transaction(
      id: 't4',
      title: 'Açúcar',
      value: 6.40,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Manteiga',
      value: 15.30,
      date: DateTime.now(),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            elevation: 5,
            child: Text('Grafico'),
          ),
          Card(
            elevation: 5,
            child: Text('Lista de Transações'),
          ),
        ],
      )
    );
  }
}