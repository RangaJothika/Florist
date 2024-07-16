
import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
final TextEditingController controller;
final String? Function(String?)?  validator;
final String? hintText;
final String? labelText;
final InputDecoration? decoration;

textformfield({required this.controller, this.validator,this.hintText,this.labelText,this.decoration, required TextInputType keyboardType, required maxLines});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                controller: controller,
                decoration:decoration ?? InputDecoration(hintText: hintText ?? "Enter your username",labelText:labelText ?? "USERNAME", border: OutlineInputBorder()),
                validator:validator);
  }
}