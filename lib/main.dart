
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          Column(
            children: _transactions.map((tr) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 162, 90, 175),
                            width: 2,
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'R\$ ${tr.value.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tr.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(DateFormat('d MMM y').format(tr.date),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 104, 104, 104),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                );
              }).toList(),
          ),
        ],
      )
    );
  }
}