import 'package:florist/views/home.dart';
import 'package:florist/views/myorder.dart';
import 'package:flutter/material.dart';
 
class myactivities extends StatefulWidget{

 
  @override
  State<myactivities> createState()=>myactivitiesState();
}

class myactivitiesState extends State<myactivities>{
    // Example list of products
  final List<Ourproductcard> products = [
    Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000"),
    Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000", offer: "30% offer"),
    Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000",offer:"10% offer"),
  ];
  @override
  Widget build (BuildContext context){
    
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar:AppBar(
        leading: IconButton(
          onPressed:(){Navigator.pop(context);} ,
          icon:Icon(Icons.arrow_back)),
          title:Text("My Activities"),
          toolbarHeight: 70.0,),
          body:SingleChildScrollView(
            child: Column(children: [ 
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
                    ),
                  SizedBox(height: 10.0,),
                    Text("Favorites",style:TextStyle(fontSize:30.0)),
                    SizedBox(height:10.0),
                    Container(
height:400.0,            child: GridView.builder(
              padding: EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.75, // Adjust as needed
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return Ourproductcard(
                  imagePath: products[index].imagePath,
                  name: products[index].name,
                  Amount: products[index].Amount,
                  offer: products[index].offer,
                );
              },
            ),
                    ),
            ],
                    ),
                  ),         
                    
          
            );
  }
}