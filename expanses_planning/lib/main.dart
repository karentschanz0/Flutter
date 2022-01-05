import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'types/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1', 
      title: 'New shoes', 
      amount: 69.99, 
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2', 
      title: 'Market', 
      amount: 200.99, 
      date: DateTime.now(),
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card( child: Text('CHART !'), elevation: 5, color: Colors.blue,),
          ),
          Column(
            children: transactions.map((transaction) => Card(child: 
              Row( children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)
                  ),
                  child: Text(
                    // or transaction.amount.toString() + ' CHF',
                    '${transaction.amount} CHF',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                  ),
                ),
                Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(transaction.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text( DateFormat('DD MMMM yyyy').format(transaction.date), style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                )
              ],)
            ,)).toList(),
          )
        ],
      ),
    );
  }
}
