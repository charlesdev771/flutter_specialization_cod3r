import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key});

  final title_controller = TextEditingController();
  final value_Controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return             Card(
              elevation: 5, 
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                  TextField(
                    controller: title_controller,
                    decoration: InputDecoration(
                      labelText: 'Titulo' ,
                    ),
                  ),
                  TextField(
                    controller: value_Controller,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)',
                    ),
                  ), 
                  TextButton( 
                    child: Text("Nova Transação"), 
                    onPressed: () {
                      print(value_Controller.text);
                      print(title_controller.text);
                    },
                  )
                ], 
                ),
              )  
    );
  }
}