import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool passwordField;
  const InputText({Key? key, this.label = '', this.keyboardType = TextInputType.text, this.passwordField = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.passwordField ? true : false,
      decoration: InputDecoration(
        labelText: label,
        labelStyle:
            TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),
      ),
    );
  }
}
