import 'package:education_app_ui/core/models/event/event_model.dart';
import 'package:flutter/material.dart';
import 'package:education_app_ui/core/utils/date_time_extract_formatter.dart';

class PopularEventCard extends StatefulWidget {
  final Event event;
  bool ? isFavorite = false;
  PopularEventCard({
    super.key,
    required this.event,
  });

  @override
  void initState(){
    isFavorite = false;
  }
  @override
  State<PopularEventCard> createState() => _PopularEventCardState();
}

class _PopularEventCardState extends State<PopularEventCard> {
  bool get isFavorite => isFavorite;
  
  get event => event;
 

  set isFavorite(bool isFavorite) {}

  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: (){
      
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.68,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400.withOpacity(0.6),
              blurRadius: 4,
              spreadRadius: 2
            )
          ]
        ),
        child: Stack(
          
          children: [
            //Container that displays the events' cover image
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/eventtwo.jpg"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
      
            //container that displays the add to favorite icon :heart icon
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    widget.isFavorite = !widget.isFavorite!;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12)
                    ),
                  ),
                  child: Icon(widget.isFavorite! ? Icons.favorite_rounded:Icons.favorite_border, color: Colors.red,),
                ),
              ),
            ),
      
            //container that displays the event start date
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  border: Border.all(
                     color: Colors.purple,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(12)
                  )
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(DateTimeExtractor.getDate(widget.event.startDateAndTime), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                ],),
              ),
            ),
      
            //container that displays some basic event info
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 5, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.event.title, 
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white, 
                        overflow: TextOverflow.ellipsis),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_pin, color: Colors.white,),
                        
                              Text(widget.event.location, style: TextStyle(
                                fontSize: 16,
                                color: Colors.white, 
                                overflow: TextOverflow.ellipsis),),
                            ]
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_sharp, color: Colors.white,),
                              Text(DateTimeExtractor.getTime(widget.event.startDateAndTime), 
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, 
                                  overflow: TextOverflow.ellipsis),),
                            ],
                          )
                        ],
                      )
                  ],),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}