import 'package:education_app_ui/core/common/app_navigator.dart';
import 'package:education_app_ui/core/common/presentation/pages/home/home_page.dart';
import 'package:education_app_ui/core/features/events/presentation/pages/events_home_page.dart';
import 'package:flutter/material.dart';

class HeaderWithoutImage extends StatelessWidget {
  final Color? headerColor;
  final Color? textColor;
  final String text;
  const HeaderWithoutImage({super.key, required this.text, this.headerColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/ 7,
      color: headerColor ?? Colors.deepPurple[400],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: (){
                AppNavigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_rounded, 
              color: headerColor!= null ? textColor: Colors.white,size: 30,)),
            Text(text, style: TextStyle(
              color: headerColor!=null && textColor == null? Colors.deepPurple[400]: textColor, fontSize: 22, fontWeight: FontWeight.bold),),
            SizedBox(width: 25,)
          ],
        ),
      ),
    );
  }
}