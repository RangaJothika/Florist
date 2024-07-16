
import 'package:florist/constants/constantbgclr.dart';
import 'package:flutter/material.dart';




class Editprofile extends StatefulWidget {

    const Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
TextEditingController _namecontroller=TextEditingController();
TextEditingController _mailcontroller=TextEditingController();
TextEditingController _phonecontroller=TextEditingController();

final _formKey=GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryBackground,
      appBar: AppBar(leading:IconButton(icon:Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),title:Text("Edit Profile",style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),toolbarHeight: 70.0,),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(children: [  
              Stack(children: [Icon(Icons.person,size:130.0),
              Positioned(right:20.0,bottom:20.0, child:Icon(Icons.edit,color:Colors.grey,))],),
              SizedBox(height:80.0),
              TextFormField(
                controller:_namecontroller,
                decoration: InputDecoration(hintText: "Enter your mail",labelText: "EMAIL",border: OutlineInputBorder()),
                validator:(value){
                  if(value==null || value.isEmpty){
                    return "This field is required";
                  }
                  return null;
                },
                
              ),
              SizedBox(height:30.0),
              TextFormField(
                controller: _mailcontroller,
                decoration: InputDecoration(hintText: "Enter your mail",labelText: "EMAIL",border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "This field is required";
                  }
                  else if(!value.contains('@')|| !value.contains('.')){
                    return "Please enter a valid email address";
                  }
                  return null;
                  
                },),
                SizedBox(height:30.0),
              TextFormField(
                controller: _phonecontroller,
                decoration: InputDecoration(hintText: "Enter your phonenumber",labelText: "PHONENUMBER",border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "This field is required";
                  }
                  else if(!RegExp(r'^[0-9]+$').hasMatch(value)){
                    return 'Please enter a valid phone number';
                  }
                  else if(!(value.length>9)){
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },),
                SizedBox(height:100.0),
                SizedBox(
                  height:60.0,
                  width:200.0,
                  child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      final snackbar=SnackBar(content: Text("Changes Saved Successfully"),);
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  }, child: Text("Edit Changes",style: TextStyle(fontSize: 20.0),)))
            ],),
          ),
        ),
      )
    );
  }
}