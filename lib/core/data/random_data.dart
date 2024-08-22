import 'dart:math';

import 'package:education_app_ui/core/models/event/event_category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/event/event_model.dart';

// Function to generate random events  
List<Event> generateRandomEvents() {  
  final random = Random();  
  final List<Event> events = [];  

  // Sample data  
  List<String> titles = [  
    "Music Festival",  
    "Art Exhibition",  
    "Tech Conference",  
    "Food Fair",  
    "Sports Event",  
    "Charity Gala",  
    "Book Signing",  
    "Film Screening",  
    "Networking Event",  
    "Yoga Workshop"  
  ];  

  List<String> locations = [  
    "Central Park",  
    "Art Gallery",  
    "Convention Center",  
    "City Stadium",  
    "Community Hall",  
    "City Library",  
    "Open Air Theater",  
    "Hotel Ballroom",  
    "Civic Center",  
    "Museum"  
  ];  

  List<String> categories = [  
    "Music",  
    "Art",  
    "Technology",  
    "Food",  
    "Sports",  
    "Charity",  
    "Literature",  
    "Film",  
    "Business",  
    "Health & Wellness"  
  ];  

  // Generate 10 random events  
  for (int i = 0; i < 10; i++) {  
    String title = titles[random.nextInt(titles.length)];  
    String author = "Author ${random.nextInt(100)}";  
    String description = "Description for $title.";  
    DateTime startDate = DateTime.now().add(Duration(days: random.nextInt(30), hours: random.nextInt(24)));  
    DateTime endDate = startDate.add(Duration(hours: random.nextInt(5) + 1));  
    String location = locations[random.nextInt(locations.length)];  
    String category = categories[random.nextInt(categories.length)];  
    List<String> guests = List.generate(random.nextInt(5) + 1, (index) => "Guest ${random.nextInt(100)}");  

    Event event = Event(  
      title: title,  
      coverImageUrl: "https://example.com/image${random.nextInt(10)}.jpg",  
      author: author,  
      description: description,  
      startDateAndTime: startDate,  
      endDateAndTime: endDate,  
      location: location,  
      category: category,  
      guests: guests,  
    );  

    events.add(event);  
  }  

  return events;  
}  



List<EventCategory> generateRandomEventCategories() {  
  final List<String> categoryNames = [  
    "Music",  
    "Art",  
    "Technology",  
    "Food",  
    "Sports",  
    "Charity",  
    "Literature",  
    "Film",  
    "Business",  
    "Health & Wellness"  
  ];  

  final List<IconData> categoryIcons = [  
    Icons.music_note,  
    Icons.brush,  
    Icons.computer,  
    Icons.fastfood,  
    Icons.sports_soccer,  
    Icons.favorite,  
    Icons.book,  
    Icons.movie,  
    Icons.business_center,  
    Icons.healing  
  ];  

  final List<EventCategory> selectedCategories = [];  
  final Set<int> selectedIndices = {};  

  // Generate 6 unique random categories  
  while (selectedCategories.length < 6) {  
    int randomIndex = (categoryNames.length * (0.5 + (0.5 * (0.5)))).toInt() % categoryNames.length;  
    if (!selectedIndices.contains(randomIndex)) {  
      selectedIndices.add(randomIndex);  
      selectedCategories.add(EventCategory(  
        name: categoryNames[randomIndex],  
        icon: categoryIcons[randomIndex],  
      ));  
    }  
  }  

  return selectedCategories;  
}