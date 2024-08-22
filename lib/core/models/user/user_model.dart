class EventCategory {
  final String name;
  final String description;

  EventCategory({
    required this.name,
    required this.description,
  });

  // Serialize an EventCategory object to a map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
    };
  }

  // Deserialize a map to create an EventCategory object
  factory EventCategory.fromJson(Map<String, dynamic> json) {
    return EventCategory(
      name: json['name'],
      description: json['description'],
    );
  }
}
