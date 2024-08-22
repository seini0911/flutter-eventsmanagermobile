import 'package:education_app_ui/core/models/event/event_model.dart';
import 'package:education_app_ui/widgets/header_with_image.dart';
import 'package:education_app_ui/widgets/header_with_search.dart';
// import 'package:education_app_ui/widgets/popular_event_card.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatefulWidget {
  final Event event;
  final bool isFavorite;
  const EventDetailsPage({super.key, required this.event, required this.isFavorite});
  
  @override
  void initState(){
    
  }

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header section
            HeaderWithSearch(
              headerContainer: HeaderWithImageWidget(
               "assets/images/eventtwo.jpg",
                widget.event.title,
                Icons.arrow_back_ios,
                Icons.favorite_rounded,
                context,
              ),
              searchOptionIsVisible: false),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //event title
                    Text(widget.event.title, style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 25, fontWeight: FontWeight.bold),),
                    // SizedBox(height: 15,),
                    //event location
                     Row(
                      children: [
                        Icon(Icons.location_on_rounded, size: 15, color: Color.fromARGB(255, 58, 2, 131).withOpacity(0.9),),
                        Text(widget.event.location, style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 58, 2, 131).withOpacity(0.9)),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    //event start date and time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month, size: 15, color: Colors.black.withOpacity(0.9),),
                            Text(widget.event.startDateAndTime.toIso8601String(), style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.9)),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.av_timer_rounded, size: 15, color: Color.fromARGB(255, 58, 2, 131).withOpacity(0.9),),
                            Text(widget.event.startDateAndTime.toIso8601String(), style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 58, 2, 131).withOpacity(0.9),),),
                        
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    //event description
                    Text(
                      "Description", 
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Join us for an unforgettable evening at the Summer Beats Music Festival! Experience electrifying performances by top artists across genres like rock, pop, and EDM. Dance the night away under the stars, enjoy delicious food from local vendors, and immerse yourself in a vibrant atmosphere. Don’t miss out on the ultimate summer music celebration!", 
                       textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, letterSpacing: 1, color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/avatar.jpg'),
                            fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Text("Organizer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.7)),),
                            Text(widget.event.author, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.7)),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                     Text(
                      "Guests", 
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    //Images of guests invited to the event
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.person),
                        ),
                      ],
                    ),
                     SizedBox(height: 20,),
                    //participate button to register user to the event
                    Center(
                      child: Material(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                            child: Text("Join the fun", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}