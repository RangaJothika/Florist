import 'package:florist/constants/constantbgclr.dart';
import 'package:florist/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({super.key});

  @override
  State<Feedbacks> createState() => FeedbacksState();
}

class FeedbacksState extends State<Feedbacks> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryBackground,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Feedbacks"),
        toolbarHeight: 70.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Image.asset("assets/images/feedback.jpg",
                  height: 350.0, width: 350.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                height: 300.0,
                child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                        labelText: "Enter your comments",
                        border: OutlineInputBorder()),
                    maxLines: null,
                    keyboardType: TextInputType.multiline),
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
                height: 50.0,
                width: 150.0,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit", style: TextStyle(fontSize: 20.0))))
          ],
        ),
      ),
    );
  }
}
