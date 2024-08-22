
import 'package:education_app_ui/widgets/custom_input_field_with_title.dart';
import 'package:education_app_ui/widgets/custom_rounded_button.dart';
import 'package:education_app_ui/widgets/header_without_image.dart';
import 'package:education_app_ui/widgets/upload_image_button.dart';
import 'package:flutter/material.dart';

class NewEventPage extends StatelessWidget {
  const NewEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header section
          const HeaderWithoutImage(text: "Create an Event", headerColor: Colors.white,),
          //event creation form section
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("Cover Image",style: TextStyle(fontSize:18, fontWeight: FontWeight.bold,color:  Colors.black.withOpacity(0.7)),),
                      Container(
                        width: double.infinity,
                        height: 200,
                        
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/bgtwo.jpg"), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: UploadImageButton(),
                            )
                          ]
                        ),
                      ),
                      SizedBox(height: 15,),
                      CustomInputFieldWithTitle(fieldTitleText: "Title", fieldHintText: "Enter a name for your event"),
                      SizedBox(height: 18,),
                      Row(
                        children: [
                           Expanded(child: CustomInputFieldWithTitle(fieldTitleText: "Start Date", fieldHintText: "dd/mm/yyyy")),
                           SizedBox(width:10,),
                           Expanded(child: CustomInputFieldWithTitle(fieldTitleText: "Time", fieldHintText: "7:00 PM")),
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(
                        children: [
                           Expanded(child: CustomInputFieldWithTitle(fieldTitleText: "End Date", fieldHintText: "dd/mm/yyyy")),
                           SizedBox(width:10,),
                           Expanded(child: CustomInputFieldWithTitle(fieldTitleText: "Time", fieldHintText: "7:00 PM")),
                        ],
                      ),
                      SizedBox(height: 18,),
                      CustomInputFieldWithTitle(fieldTitleText: "Description", fieldHintText: "Enter a short description for your event"),
                      SizedBox(height: 18,),
                      CustomInputFieldWithTitle(fieldTitleText: "Location", fieldHintText: "Where is the event going to take place"),
                      SizedBox(height: 18,),
                      CustomInputFieldWithTitle(fieldTitleText: "Category", fieldHintText: "Public/Private/Paid/Free"),
                      SizedBox(height: 18,),
                      Text("Invite People", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold,color:  Colors.black.withOpacity(0.7)),),
                      SizedBox(height: 18,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/images/avatar.jpg"),
                          ),
                          SizedBox(width: 7,),
                          CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.add),
                          )
                      ],),
                      SizedBox(height: 18,),
                      CustomRoundedButton(btnText: "Create Event", action:(){}),
                      SizedBox(height: 18,),
                  ],
                ),
              ),
            ),
          )
        ],      
      ),
    );
  }
}