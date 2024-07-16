import 'package:florist/views/feedbacks.dart';
import 'package:florist/views/myactivities.dart';
import 'package:florist/views/paymentmethods.dart';
import 'package:florist/views/savedaddress.dart';
import 'package:florist/views/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatefulWidget{
  @override
  State<profile> createState()=>_MyorderState();
  
}

class _MyorderState extends State<profile>{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:Scaffold(
      backgroundColor:Colors.pink[100],
      appBar:AppBar(title: Text("My Account"),
      toolbarHeight:70.0 ,),
        body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[ Padding(
            padding: const EdgeInsets.only(left:50.0,right:70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            ClipOval(      
                child:Icon( size:80.0,Icons.person),), 
                  
             Column(
              children: [Text("Jothika",style:TextStyle(fontSize:20.0)),
             Text("+91 1234567890",style:TextStyle(fontSize:20.0))],)
             ],),
          ),   
          SizedBox(height:50.0),    
           Column(
            children: [
              Row(children: [
                IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>myactivities()));}, icon:Icon(Icons.assignment)),
          TextButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>myactivities()));},child:Text("My Activities",style:TextStyle(fontSize:20.0)),),],),
          SizedBox(height:10.0),  
          Row(children: [
            IconButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Savedaddress()));},icon:Icon(Icons.location_on),),
          TextButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Savedaddress()));},child:Text("Saved Address",style:TextStyle(fontSize:20.0)),),],),
          SizedBox(height:10.0),  
          Row(children: [
            IconButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Paymentmethods()));},icon:Icon(Icons.payment),),
          TextButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Paymentmethods()));},child:Text("Payment Methods",style:TextStyle(fontSize:20.0)),),],),
          
          SizedBox(height:10.0), 
          Row(children: [
            IconButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Editprofile()));},icon:Icon(Icons.edit),), 
          TextButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Editprofile()));},child:Text("Edit Profile",style:TextStyle(fontSize:20.0)),),],),
          
          SizedBox(height:10.0),
          Row(children: [
            IconButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Feedbacks()));},icon:Icon(Icons.feedback),), 
          TextButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Feedbacks()));},child:Text("Feedbacks",style:TextStyle(fontSize:20.0)),),],),
          SizedBox(height:70.0),  
          SizedBox(
            height:50.0,
             width:200.0,
            child: ElevatedButton(onPressed:(){},child:Text("LOG OUT",style:TextStyle(fontSize:20.0)),
            ),
          ),
                 ],),               
                 ],),
        ),
    
    
     );
  }
}
