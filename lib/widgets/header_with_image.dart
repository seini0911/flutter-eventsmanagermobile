import 'package:education_app_ui/core/common/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

Widget HeaderWithImageWidget(
  String headerImage,
   String headerText,
   IconData leftIcon,
   IconData rightIcon,
   BuildContext context
){
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(headerImage),
            fit: BoxFit.cover
          ),   
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
                child: Icon(leftIcon, color: Colors.white, size: 30,)),
              Icon(rightIcon, color: Colors.white, size: 30,),
            ],
          ),
          SizedBox(height: 10,),
          Text(headerText, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
        ],
      ),
    );
}