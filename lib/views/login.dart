import 'package:florist/views/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home:Scaffold( 
       backgroundColor:Colors.pink[100],
       body:Column(
          children:[
            Padding(
         padding: const EdgeInsets.only(top:148.0),
         child: Text("Hello there",style:TextStyle(fontSize:40,fontWeight:FontWeight.bold),),),
            SizedBox(height:10.0),
         Padding(
         padding: const EdgeInsets.only(left:20.0),
         child: Text("Let's login to make easier for you to do purchasing",style:TextStyle(fontSize:20),),),
         SizedBox(height:70.0),
         Center(
          child:Column(
           children:[ OutlinedButton(
            onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));},
           style:OutlinedButton.styleFrom(side:BorderSide(color:Colors.black),
           shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
           minimumSize:Size(330.0,60.0),),
            child:Text("Login with Google",style:TextStyle(fontSize:20.0))
           ),
           SizedBox(height:30.0),
           OutlinedButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
            },
           style:OutlinedButton.styleFrom(side:BorderSide(color:Colors.black),
           shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
           minimumSize:Size(330.0,60.0),),
            child:Text("Login with Facebook",style:TextStyle(fontSize:20.0))
           ),
           SizedBox(height:30.0),
           OutlinedButton(
            onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));},
           style:OutlinedButton.styleFrom(side:BorderSide(color:Colors.black),
           shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
           minimumSize:Size(330.0,60.0),),
            child:Text("Login with Email",style:TextStyle(fontSize:20.0))
           ),
           SizedBox(height:70.0),
           TextButton(
            onPressed:(){},
            child:
           Text("don’t have an account? register",style:TextStyle(fontSize:20.0))),
           ],
          ),
         ),
         
         ],
         ),
       
       ),

      
    );
  
  }
}