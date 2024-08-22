import 'package:flutter/material.dart';

class EventCategoryWidget extends StatelessWidget {
  final IconData icon;
  final String categoryName;
  final bool isSelected;
  const EventCategoryWidget({super.key, required this.icon, required this.categoryName, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            //Event category icon/image
            Container(
              width: 60,
              height: MediaQuery.of(context).size.height*0.06,
              decoration: BoxDecoration(
                color: isSelected ? Colors.deepPurple[400]:Colors.deepPurple[100] ,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Icon(icon, size: 35, color: Colors.white,),
            ),
            SizedBox(height: 5,),
            Text(categoryName, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
            //Event category name
          ],
        ),
      );
  }
}