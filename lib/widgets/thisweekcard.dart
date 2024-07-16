part of "../views/myorder.dart"; 
class Thisweekcard extends StatelessWidget {

  final String? ImagePath;
  final String? ID;
  final String? Date;
  final String? Amount;
  final String? Time;
  final String? Cash;

  Thisweekcard({this.ImagePath,this.ID,this.Date,this.Amount,this.Time,this.Cash});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ 
        Card(elevation:3,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
      child:Padding(
        padding: const EdgeInsets.only(left:10.0,right:10.0,bottom:10.0),
        child: Column(children: [Image.asset(ImagePath ?? "assets/images/myorder1.png"),
        SizedBox(height:20.0),
        Text(ID ?? "A143098",style:TextStyle(fontSize:20.0)),
         SizedBox(height:20.0),
        Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Text(Date ?? "17-08-2023",style:TextStyle(fontSize:15.0)),
          Text(Amount ??"Rs.200",style:TextStyle(fontSize:15.0)),
        ],),
         SizedBox(height:7.0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [ 
          Text(Time ?? "14:30,Pickup Store",style:TextStyle(fontSize:15.0),),
          Text(Cash ?? "Cash",style:TextStyle(fontSize:15.0),),
        ],)
        ],),
      ),
      ),
      ],
    
    );
  }
}