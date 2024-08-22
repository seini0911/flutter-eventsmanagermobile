import 'package:flutter/cupertino.dart';

class EventCategory {
  final String name;
  final IconData icon;

  EventCategory({
    required this.name,
    required this.icon,
  });

  // Serialize an EventCategory object to a map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'icon': icon,
    };
  }

  // Deserialize a map to create an EventCategory object
  factory EventCategory.fromJson(Map<String, dynamic> json) {
    return EventCategory(
      name: json['name'],
      icon: json['icon']
    );
  }
}
