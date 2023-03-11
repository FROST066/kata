import 'package:flutter/material.dart';

import '../utils/style.dart';

Widget customTextFormField({String labelText = ""}) => TextFormField(
      style: textStyle(fontSize: 11),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        labelStyle: textStyle(fontWeight: FontWeight.w400),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );

class CustomPassWordFormField extends StatefulWidget {
  const CustomPassWordFormField({super.key, required this.labelText});
  final String labelText;
  @override
  State<CustomPassWordFormField> createState() =>
      _CustomPassWordFormFieldState();
}

class _CustomPassWordFormFieldState extends State<CustomPassWordFormField> {
  bool showPassWord = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showPassWord,
      style: textStyle(fontSize: 11),
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () => setState(() => showPassWord = !showPassWord),
          child: Icon(!showPassWord ? Icons.visibility : Icons.visibility_off),
        ),
        alignLabelWithHint: true,
        labelText: widget.labelText,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        labelStyle: textStyle(fontWeight: FontWeight.w400),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
