import 'package:flutter/material.dart';

class mycartcard extends StatefulWidget {
  final String? ImagePath;
  final String? Amount;
  final String? Name;
  const mycartcard({super.key, this.ImagePath, this.Amount, this.Name});

  @override
  State<mycartcard> createState() => _MycartcardState();
}

class _MycartcardState extends State<mycartcard> {
  int quantity = 1;
  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(widget.ImagePath ?? "assets/images/cart1.png",
                        height: 100.0, width: 100.0)
                  ],
                ),
                Column(
                  children: [
                    Text(widget.Name ?? "Tulip",
                        style: TextStyle(fontSize: 20.0)),
                    Text(widget.Amount ?? "Rs.200",
                        style: TextStyle(fontSize: 15.0)),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () {}, child: Text("Add to Favorite")),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _increment();
                            },
                            icon: Icon(Icons.add)),
                        Text("Quantity:$quantity"),
                        IconButton(
                            onPressed: () {
                              _decrement();
                            },
                            icon: Icon(Icons.remove)),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
