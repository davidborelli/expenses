import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final void Function(String title, double value) addTransaction;
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  TransactionForm(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => addTransaction(
                    titleController.text,
                    double.tryParse(valueController.text) ?? 0.0,
                  ),
                  child: Text(
                    'Novo Lançamento',
                    style: TextStyle(color: Colors.purple),
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
