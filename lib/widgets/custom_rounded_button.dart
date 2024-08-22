import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final String btnText;
  final VoidCallback action;
  const CustomRoundedButton({super.key, required this.btnText, required this.action});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.deepPurple[400],
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: action,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
            child: Text(btnText, style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
          ),
        ),
      ),
    );
  }
}