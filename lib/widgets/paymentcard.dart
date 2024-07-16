import 'package:flutter/material.dart';

class Paymentcard extends StatelessWidget {

  final String? method;

  Paymentcard ({this.method});

  @override
  Widget build(BuildContext context) {
    return Card(
             margin:EdgeInsets.all(10.0),
               child:
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [Text(method ?? "Bank Details"),
                        ElevatedButton(onPressed: (){}, child: Text("ADD"))],),
                  ));
  }
}