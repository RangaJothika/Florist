part of "../views/home.dart"; 
class Ourproductcard extends StatelessWidget {
  final String? imagePath;
  final String? name;
  final String? Amount;
  final String? offer;

  Ourproductcard({this.imagePath,this.name,this.Amount,this.offer});
  @override
  Widget build(BuildContext context) {
    return Card(elevation: 3,
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
        child:Column(children: [Image.asset(imagePath ?? "assets/images/ourproduct1.png"),
        Text(name ?? "Pinky Bouquet"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Text(Amount ?? "Rs.125.00"),
        Text(offer ?? "",style:TextStyle(fontSize:20.0)),
        ],
        ),
        ],
        ),
        );
  }
}