import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "../widgets/thisweekcard.dart";

class Myorder extends StatefulWidget{
  @override
  State<Myorder> createState()=>_MyorderState();
}

class _MyorderState extends State<Myorder>{
  @override
  Widget build (BuildContext context){
    return MaterialApp(home:Scaffold(backgroundColor:Colors.pink[100],
    body:SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:60.0,left:15.0,right:15.0),
        child: Column( 
          children:[
            Text("My Orders",style:TextStyle(fontSize:30.0,fontWeight:FontWeight.bold),),
            SizedBox(height:10.0),
            Text("This Week",style:TextStyle(fontSize:25.0,fontWeight:FontWeight.bold),),
            SizedBox(height:10.0),
            Thisweekcard(),
            SizedBox(height:10.0),
        Thisweekcard(
          ImagePath: "assets/images/myorder2.png",
          ID:"A290873",
          Date:"25-04-24",
          Amount:"Rs.150",
          Time:"10:00",
          Cash:"Cheque",
        ),
        SizedBox(height:12.0),
        Text("This Month",style:TextStyle(fontSize:25.0,fontWeight:FontWeight.bold)),
      SizedBox(height:10.0),
        Thisweekcard(
          ImagePath: "assets/images/thismonthorder1.png",
          ID:"A120976",
          Date:"07-11-24",
          Amount:"Rs.100",
          Time:"06:00",
          Cash:"Bank Transfer",
        )],),
      ),
    ),
    ),
    );
  }

}