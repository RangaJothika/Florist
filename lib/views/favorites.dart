import 'package:florist/views/home.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  // Example list of products
  final List<Ourproductcard> products = [
    Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000"),
    Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000", offer: "30% offer"),
    Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000",offer:"10% offer"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        leading: Icon(Icons.search),
        actions: [Icon(Icons.notifications)],
      ),
      backgroundColor: Colors.pink[100],
      body:Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [ 
        Text("Favorites",style:TextStyle(fontSize:30.0)),
        SizedBox(height:10.0),
        Expanded(
          child: GridView.builder(
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



