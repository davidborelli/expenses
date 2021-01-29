import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transactions(id: 't1', title: 'Tenis de corrida', value: 310.76, date: DateTime.now()),
    Transactions(id: 't2', title: 'Conta de Luz', value: 211.30, date: DateTime.now()),
    Transactions(id: 't3', title: 'Mouse Phoda', value: 700.01, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _transactions.map((transaction) => Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(transaction.value.toString()),
                  ),
                  Column(
                    children: [
                      Text(transaction.title),
                      Text(transaction.date.toString())
                    ],
                  )
                ],
              ),
            )).toList(),
          )
        ],
      )
    );
  }
}