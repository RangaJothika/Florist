part of "../views/home.dart"; 

class cardwidget extends StatelessWidget {

  final String? imagePath;
  final String? offer;
  final String? description;

  cardwidget({this.imagePath,this.offer,this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 288.0,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Ensures children fill the width
          children: [
            Expanded( // Use Expanded to make the image fill remaining space
              child: Image.asset(
                imagePath ?? "assets/images/flower1.jpg",
                fit: BoxFit.cover, // Cover the entire available space
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer ?? "30% of all items",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    description ?? "For every bouquet package with Pick up store and you need to use transfer payment methods",
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
