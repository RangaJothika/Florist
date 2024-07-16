

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
part "../widgets/savedaddresscard.dart";

class Savedaddress extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed:(){Navigator.pop(context);},icon:Icon(Icons.arrow_back)),
      title: Text("Saved Address"),
      toolbarHeight: 70.0,),
      body:Column(
        children: [
          Savedaddresscard(),
      SizedBox(height:05.0),
Savedaddresscard(addressnumber: "Address2",name: "Jothika",phone: "+91 9876543210",address: "1/129,North Street,",city: "Tirunelveli",),
SizedBox(height:05.0),
Savedaddresscard(addressnumber: "Address3",name: "Chandra",phone: "+91 9806533218",address: "12B,Main road,East Street,Tuticorin",),
SizedBox(height:30.0),
Container(width:250.0,height:50.0,child: ElevatedButton(onPressed: (){}, child:Text("Add Address",style: TextStyle(fontSize:20.0),))),
        ],
      ),
    );
  }
}