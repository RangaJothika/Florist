import 'package:florist/views/addresspage.dart';
import 'package:florist/views/home.dart';
import 'package:florist/widgets/mycartcard.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("MyCart"),
        toolbarHeight: 70.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              mycartcard(),
              mycartcard(
                  ImagePath: "assets/images/cart2.png",
                  Amount: "Rs.150",
                  Name: "Daffodil"),
              mycartcard(
                  ImagePath: "assets/images/cart3.png",
                  Amount: "Rs.180",
                  Name: "White Roses"),
              mycartcard(
                  ImagePath: "assets/images/cart4.png",
                  Amount: "Rs.170",
                  Name: "Red Lily"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Price:Rs.700", style: TextStyle(fontSize: 20.0)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressPage()));
                      },
                      child: Text("Buy Now"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
