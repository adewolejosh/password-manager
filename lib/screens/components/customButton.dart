import 'package:flutter/material.dart';
import 'package:password_manager/screens/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final dynamic onPressed;
  final String title;
  final dynamic buttonColor;

  const CustomButton({Key? key, this.onPressed, required this.title, this.buttonColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(title, style: const TextStyle(color: Colors.white),),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(2.0),
          side: MaterialStateProperty.all(BorderSide(color: AppColors().dark, width: 1.0)),
          backgroundColor: MaterialStateProperty.all(buttonColor),
          fixedSize: MaterialStateProperty.all(const Size(250.0, 50.0))
      ),
    );
  }
}