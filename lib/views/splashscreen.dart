import 'package:florist/views/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Splashscreen(),);}}

class Splashscreen extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
  return GestureDetector(
        onTap:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Login()));
        },
        child: Scaffold(
          backgroundColor:Colors.pink[100],
          body:
             Center(
               child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  //  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                Image.asset("assets/images/lotus1.png"),
                Text("Florist",style:TextStyle(fontFamily:'Roboto',fontWeight:FontWeight.bold,fontSize:30),),
                ],
                      ),
             ),
            ),
      
    
      );
  }
}