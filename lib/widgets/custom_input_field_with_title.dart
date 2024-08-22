import 'package:flutter/material.dart';

class CustomInputFieldWithTitle extends StatelessWidget {
  final String fieldTitleText;
  final String fieldHintText;
  const CustomInputFieldWithTitle({super.key, required this.fieldTitleText, required this.fieldHintText});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //event name
            Text(fieldTitleText, style: TextStyle(fontSize:18, fontWeight: FontWeight.bold,color:  Colors.black.withOpacity(0.7)),),
            SizedBox(height: 5,),
            Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
              ],
              borderRadius: BorderRadius.circular(12)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: fieldHintText,
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.4))
              ),
            ),
            )
        ],
    );
  }
}