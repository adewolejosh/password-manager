import 'package:flutter/material.dart';
import 'package:password_manager/screens/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscure;
  final int maxLength;
  final dynamic keyboardinputlabel;

  const CustomTextField({Key? key,
    required this.hintText,
    required this.controller,
    required this.obscure,
    required this.maxLength,
    required this.keyboardinputlabel}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  void dispose() {
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscure,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardinputlabel,
      decoration: InputDecoration(
        counter: const Offstage(),
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors().altDark, width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors().dim, width: 1.0)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors().dim, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        )
      ),
    );
  }
}
