import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadImageButton extends StatelessWidget {
  const UploadImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Icon(Icons.camera_alt, size: 35, color: Colors.deepPurple,)),
    );
  }
}