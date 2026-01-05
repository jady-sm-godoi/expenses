import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) onsubmit;

  TransactionForm({required this.onsubmit, super.key});

  void _submitForm(){
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if(title.isEmpty || value <= 0){
      return;
    }

    onsubmit(title, value);
  }

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
                    onSubmitted: (_) => _submitForm(),
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
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    onSubmitted: (_) => _submitForm(),
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
                        onPressed: _submitForm,
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