import 'package:education_app_ui/core/features/events/presentation/screens/display_event_categories_screen.dart';
import 'package:education_app_ui/core/features/events/presentation/screens/display_events_by_title_screen.dart';
import 'package:education_app_ui/widgets/header_with_image.dart';
import 'package:education_app_ui/widgets/header_with_search.dart';
import 'package:flutter/material.dart';

class EventsHomePage extends StatelessWidget {
  const EventsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* ----------------- HEADER SECTION ----------------- */
            HeaderWithSearch(
              headerContainer: HeaderWithImageWidget(
              "assets/images/bgtwo.jpg",
                "Welcome back, Gamaliel",
                Icons.dashboard,
                Icons.notifications_rounded,
                context,
              ),
              searchOptionIsVisible: true
              ),
            /* ----------------- END HEADER SECTION ----------------- */

           const SizedBox(height: 12,),

            /* ----------------- EVENTS CATEGORIES SECTION ----------------- */
            // DisplayEventCategories(eventCategories: eventCategories),
            /* ----------------- END EVENTS CATEGORIES SECTION ----------------- */

            /* ----------------- MAIN CONTENT SECTION ----------------- */
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /* ----------------- EVENTS BASED ON FILTER OPTIONS/CATEGORIES ----------------- */
                   
                    // DisplayEventsByTitle(sectionTitle: "Popular events", events: randomEvents),

                     /* ----------------- RECOMMENDED EVENTS ----------------- */
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Stack(
                          children:[
                            // HEADER OF SECTION
                            Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Recommended", style: TextStyle(color: Color.fromARGB(255, 58, 2, 131).withOpacity(0.9), fontSize: 20, fontWeight: FontWeight.bold),),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(right: 12.0),
                                  //   child: Row(
                                  //     children: List.generate(recommendedEvents.length, (index) => AnimatedContainer(
                                  //         duration: Duration(milliseconds: 2),
                                  //           margin: const EdgeInsets.all(3),
                                  //           width: 10,
                                  //           height: 10,
                                  //           decoration: BoxDecoration(
                                  //             color: currentRecommendedEventsPage == index ? Colors.deepPurple: Colors.grey.shade400,
                                  //             borderRadius: BorderRadius.circular(50)
                                  //           ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),

                            //EVENT IMAGE CARD
                            // Align(
                            //   alignment: Alignment.bottomCenter,
                            //   child: PageView.builder(
                            //       scrollDirection: Axis.horizontal,
                            //       itemCount: recommendedEvents.length,
                            //       onPageChanged: (index){
                            //         setState(() {
                            //           currentRecommendedEventsPage = index;
                            //         });
                            //       },
                            //       itemBuilder: (context, index){
                            //         return Container(
                            //           margin: const EdgeInsets.only(top:27, right: 5),
                            //           width: MediaQuery.of(context).size.width,
                            //           decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(22),
                            //             image: DecorationImage(
                            //               image: AssetImage(recommendedEvents[index]['coverImage']),
                            //               fit: BoxFit.cover
                            //             )
                            //           )
                            //         );
                            //     }),
                            //   ),
                            
                          ]
                        ),
                      ),
                    ),

                     /* ----------------- DISPLAY EVENTS BY FILTERS/CATEGORIES ----------------- */
                    // DisplayEventsByTitle(sectionTitle: "Upcoming events",events: randomEvents),
                    // DisplayEventsByTitle(sectionTitle: "Recommended events",events: randomEvents)
                  ],
                ),
              ),
            ),
            /* ----------------- END MAIN CONTENT SECTION ----------------- */            
          ],
        ),
      ),
    );
  }
}