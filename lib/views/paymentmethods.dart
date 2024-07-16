import 'package:florist/widgets/paymentcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Paymentmethods extends StatelessWidget{
  @override  
  Widget build(BuildContext context){
    return Scaffold(backgroundColor: Colors.pink[100],
    appBar: AppBar(leading:IconButton(onPressed:(){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),),title: Text("Payment Methods"),),
    body:
      Center(
        child: Padding(
        padding: const EdgeInsets.only(top:27.0),
        child: Column(children: [ Text("My Payment Methods",style: TextStyle(fontSize: 26.0,fontWeight: FontWeight.bold),),
        SizedBox(height:25.0),
           Paymentcard(),
           Paymentcard(method:"UPI"),
           Paymentcard(method:"Credit/Debit Cards"),
           Paymentcard(method:"Gift Cards"),
           Paymentcard(method:"EMI")
        ],
        ), 
      ),
      )
    
    );
  }
}