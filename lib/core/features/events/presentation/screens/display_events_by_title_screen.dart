
import 'package:education_app_ui/core/features/events/presentation/widgets/popular_event_card_widget.dart';
import 'package:education_app_ui/core/models/event/event_model.dart';
import 'package:flutter/material.dart';

class DisplayEventsByTitle extends StatelessWidget {
  const DisplayEventsByTitle({
    super.key,
    required this.sectionTitle,
    required this.events,
  });

  final String sectionTitle;
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(sectionTitle, style: TextStyle(color: Color.fromARGB(255, 58, 2, 131).withOpacity(0.9), fontSize: 20, fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: (){
                    //go to all events page
                  },
                  child: Row(
                    children:[
                      Text("See all", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.deepPurple[400]),),
                      Icon(Icons.arrow_forward_ios, size: 22, color: Colors.deepPurple[400],)
                  
                    ]
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
    
          //Grid view of all cards
           SizedBox(
            height: 250,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(left: 10, right : 10.0, bottom: 10, top: 5),
                child: PopularEventCard(event: events[index]),
              );} 
            ),
          ),      
        ],
      ),
    );
  }
}