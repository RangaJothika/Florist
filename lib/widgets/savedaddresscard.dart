part of "../views/savedaddress.dart"; 
class Savedaddresscard extends StatelessWidget {
  final String? addressnumber;
  final String? name;
  final String? address;
  final String? phone;
  final String? city;

  Savedaddresscard({this.address,this.addressnumber,this.name,this.phone,this.city});
  @override
  Widget build(BuildContext context) {
    return Container(
        height:200.0,
        child: Card(
          margin:EdgeInsets.only(top:20.0,left:10.0,right:10.0),        
          child:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(addressnumber ?? "Address1:",style:TextStyle(fontSize: 25.0)),
                      Icon(Icons.edit)
            ],),
                   
                Text(name ?? "Prasad",style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 08.0,),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10.0,),
                Text(phone ??"+91 1234567890",style: TextStyle(fontSize:17.0),),],),
                SizedBox(height: 08.0,),
                Row( children: [Icon( Icons.location_on),
                SizedBox(width: 10.0,),
                Column(
                  children: [
                    Text(address ?? "123A,Marketstreet,Near old Busstand,",style: TextStyle(fontSize:17.0),),
                    Text(city ?? "Tuticorin.",style: TextStyle(fontSize:17.0),),
                  ],
                ),],),
                
              ],
            ),
          ),
        ),
      );
  }
}