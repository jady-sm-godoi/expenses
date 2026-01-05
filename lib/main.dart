
import 'package:flutter/material.dart';
import 'package:expenses/components/transaction_user.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(),);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expenses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 5,
              child: Text('Grafico'),
            ),
            TransactionUser()
          ],
        ),
      )
    );
  }
}