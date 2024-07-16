part of "../views/home.dart"; 
class newarrivalcontainer extends StatelessWidget {
  
  final String? Imagepath;
  final String? Name;
  final String? description1;
  final String? description2;
  final String? Amount;

  newarrivalcontainer({this.Imagepath,this.Name,this.description1,this.description2,this.Amount});
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Container(
              decoration: BoxDecoration(border:Border.all(color:Colors.black,width:1.0)),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween, 
                children:[
                  Image.asset(Imagepath ?? "assets/images/background.png"),                
                  Column(children: [
                  Text( Name ?? "Full Roses",style:TextStyle(fontSize:20.0)),
                  Text(description1 ?? "Our new bouquet to someone "),
                  Text(description2 ??"who really love red roses"),
                  Text(Amount ?? "Rs.175.00")
                  ],),
                  Icon(Icons.favorite),                  
                ],
                ),
            ),
          );
  }
}