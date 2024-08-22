import 'package:intl/intl.dart';  

class Event {  
  String title;  
  String coverImageUrl;  
  String author;  
  String description;  
  DateTime startDateAndTime;  
  DateTime endDateAndTime;  
  String location;  
  String category;  
  List<String> guests; // Assuming guests are represented as a list of strings (names or emails)  
  DateTime createdAt;  
  DateTime updatedAt;  

  Event({  
    required this.title,  
    required this.coverImageUrl,  
    required this.author,  
    required this.description,  
    required this.startDateAndTime,  
    required this.endDateAndTime,  
    required this.location,  
    required this.category,  
    required this.guests,  
    DateTime? createdAt,  
    DateTime? updatedAt,  
  })  : createdAt = createdAt ?? DateTime.now(),  
        updatedAt = updatedAt ?? DateTime.now();  

  // Method to convert the Event object to a map (for serialization)  
  Map<String, dynamic> toMap() {  
    return {  
      'title': title,  
      'coverImageUrl': coverImageUrl,  
      'author': author,  
      'description': description,  
      'startDateAndTime': startDateAndTime.toIso8601String(),  
      'endDateAndTime': endDateAndTime.toIso8601String(),  
      'location': location,  
      'category': category,  
      'guests': guests,  
      'createdAt': createdAt.toIso8601String(),  
      'updatedAt': updatedAt.toIso8601String(),  
    };  
  }  

  // Method to create an Event object from a map (for deserialization)  
  factory Event.fromMap(Map<String, dynamic> map) {  
    return Event(  
      title: map['title'],  
      coverImageUrl: map['coverImageUrl'],  
      author: map['author'],  
      description: map['description'],  
      startDateAndTime: DateTime.parse(map['startDateAndTime']),  
      endDateAndTime: DateTime.parse(map['endDateAndTime']),  
      location: map['location'],  
      category: map['category'],  
      guests: List<String>.from(map['guests']),  
      createdAt: DateTime.parse(map['createdAt']),  
      updatedAt: DateTime.parse(map['updatedAt']),  
    );  
  }  

  // Method to update the updatedAt field  
  void update() {  
    updatedAt = DateTime.now();  
  }  

  // Optional: Method to display event details  
  String displayEventDetails() {  
    return '''  
    Title: $title  
    Author: $author  
    Description: $description  
    Start: ${DateFormat('yyyy-MM-dd HH:mm').format(startDateAndTime)}  
    End: ${DateFormat('yyyy-MM-dd HH:mm').format(endDateAndTime)}  
    Location: $location  
    Category: $category  
    Guests: ${guests.join(', ')}  
    Created At: ${DateFormat('yyyy-MM-dd HH:mm').format(createdAt)}  
    Updated At: ${DateFormat('yyyy-MM-dd HH:mm').format(updatedAt)}  
    ''';  
  }  
}