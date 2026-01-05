import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) onsubmit;

  TransactionForm({required this.onsubmit, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: 'Título',
                    ),
                  ),
                  TextField(
                    /* Permite a entrada de texto pelo usuário, usado para capturar o título e valor de uma nova transação.
                    Propriedades ativadas:
                    controller: Controla o texto inserido no campo.
                    decoration: Adiciona um rótulo ao campo de entrada. */
                    controller: valueController,
                    decoration: const InputDecoration(
                      labelText: 'Valor (R\$)',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        /* Cria um botão para adicionar uma nova transação.
                          Propriedades ativadas:
                          onPressed: Define a ação ao clicar no botão.
                          style: Personaliza o estilo do botão, como cor de fundo e preenchimento.
                          child: Define o texto exibido no botão. */
                        onPressed: () => onsubmit(
                          titleController.text, 
                          double.tryParse(valueController.text) ?? 0.0
                          ),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.purple,
                          backgroundColor: Colors.purple.shade100,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                        ),
                        child: Text('Nova Transação',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}