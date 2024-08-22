import 'package:education_app_ui/widgets/custom_input_field_with_title.dart';
import 'package:education_app_ui/widgets/custom_rounded_button.dart';
import 'package:education_app_ui/widgets/header_without_image.dart';
import 'package:education_app_ui/widgets/upload_image_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header section
          const HeaderWithoutImage(text: "Profile",
           headerColor: Colors.white, 
           textColor: Colors.deepPurple,
          ),
          //picture section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/avatar.jpg"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gamaliel Seini", style: TextStyle(fontSize: 22, color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.location_pin, color: Colors.deepPurple[400],size: 22,),
                            SizedBox(width: 5,),
                            Text("Douala, Cameroon", style: TextStyle(fontSize: 14, color: Colors.deepPurple[400]),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.phone_android, color: Colors.black.withOpacity(0.5),size: 22,),
                            SizedBox(width: 5,),
                             Text("691323656", style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.5))),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(width: 10,),
                    //change profile picture icon button
                    UploadImageButton(),
                  ],
                ),
                SizedBox(height: 18,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      Text("08", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18, fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Text("Events created", style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    ],),

                    SizedBox(width: 5,),
                    Column(children: [
                      Text("28", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18, fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Text("Events joined", style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    ],),
                    SizedBox(width: 5,),
                    Column(children: [
                      Text("150", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18, fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Text("Followers", style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                    ],),
                ],)
              ],
            ),
          ),

          //update profile form
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      CustomInputFieldWithTitle(fieldTitleText: "Name", fieldHintText: "Gamaliel Seini"),
                      SizedBox(height: 18,),
                      CustomInputFieldWithTitle(fieldTitleText: "Phone", fieldHintText: "691323656"),
                      SizedBox(height: 18,),
                      CustomInputFieldWithTitle(fieldTitleText: "Email", fieldHintText: "seiniabaya@gmail.com"),
                      SizedBox(height: 18,),
                      CustomInputFieldWithTitle(fieldTitleText: "Password", fieldHintText: "*********"),
                      SizedBox(height: 18,),
                      CustomRoundedButton(btnText: "Update Profile", action:(){})
                  ],)
              ),
            ),
          )
        ],
      ),
    );
  }
}