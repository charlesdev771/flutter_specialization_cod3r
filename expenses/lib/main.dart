import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: MyHomePage()
    );
  }
}



class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});



  final _transactions = [
    Transaction(id: '1', title: "PC", value: 2200, date: DateTime.now(), ), 
    Transaction(id: '2', title: "Monitor", value: 150, date: DateTime.now(), ), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas Pessoais"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [
          Container(
            child: Card(
              color: Colors.blue, 
              child: Text("Grafico"),
              elevation: 5,
            ), 
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15, 
                        vertical: 10, 
                      ), 
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple, 
                          width: 2, 
                        )
                      ), 
                      
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tr.value.toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 20, 
                          color: Colors.purple, 
                        ),
                      ),
                    ), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tr.title, style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold,
                        )), 
                        Text(tr.date.toString(), style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ], 
                    )
                  ],
                )
              );
            }).toList(),
          )
        ],
      )
    );
  }
}