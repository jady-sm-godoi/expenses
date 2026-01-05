import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  const TransactionList({required this.transactions, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index){
          final tr = transactions[index];
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
        },            
      ), // O ListView.builder é ideal para listas dinâmicas ou com muitos itens, pois ele renderiza apenas os widgets visíveis na tela e descarta os que estão fora do campo de visão. Isso economiza memória e melhora o desempenho do aplicativo.
      // O itemCount é usado para informar ao ListView.builder quantos itens existem na lista. Isso é útil porque o número de transações pode variar dinamicamente. No caso deste app, o número de transações é baseado no tamanho da lista transactions.
    );
  }
}