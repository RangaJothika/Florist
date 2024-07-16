import 'package:florist/views/cart.dart';
import 'package:florist/views/favorites.dart';
import 'package:florist/views/myorder.dart';
import 'package:florist/views/profile.dart';
import 'package:flutter/material.dart';
part "../widgets/ourproductcard.dart";
part "../widgets/card.dart";
part "../widgets/newarrivalcontainer.dart";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    Favorites(),
    Myorder(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "My Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/lotus1.png", height: 50.0),
                    GestureDetector(onTap:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart()));},child: Image.asset("assets/images/shopping-bag.png", height: 50.0, width: 50.0)),
                  ],
                ),
              ),
              Text("Let's find your flower", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: "What do you want to find?",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3.0, color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text("Event Category", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0)),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Birthdays", style: TextStyle(fontSize: 20.0)),
                    decoration: BoxDecoration(border: Border.all(width: 1.0)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Weddings", style: TextStyle(fontSize: 20.0)),
                    decoration: BoxDecoration(border: Border.all(width: 1.0)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Graduation", style: TextStyle(fontSize: 20.0)),
                    decoration: BoxDecoration(border: Border.all(width: 1.0)),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Text("Special For You", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0)),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(right: 13.0),
                child: Column(
                  children: [
                    cardwidget(),
                    SizedBox(height: 10.0),
                    cardwidget(imagePath: "assets/images/flower2.jpg", offer: "Free Greeting card", description: "with only minimum purchase of Rs.50,000"),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  height: 100.0,
                  width: 400.0,
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Opacity(opacity: 0.5, child: Image.asset("assets/images/backgroundimg.jpeg", fit: BoxFit.cover)),
                        Center(
                          child: Column(
                            children: [
                              Text("Create your own Bouquet", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900)),
                              Text("Express Yourself by creating your own unique bouquet", style: TextStyle(fontSize: 20.0)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text("New Arrival", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              newarrivalcontainer(),
              SizedBox(height: 10.0),
              newarrivalcontainer(
                Imagepath: "assets/images/newarrival2.png",
                Name: "Derby Bouquet",
                description1: "Medium to large size with ",
                description2: "premium sick gold",
              ),
              Text("Our Product", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ourproductcard(),
                  Ourproductcard(imagePath: "assets/images/ourproduct2.png", name: "Tulip", Amount: "Rs.4,000"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

