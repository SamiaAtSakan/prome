class Event {
  final String name;
  final String? imageUrl;

  Event({required this.name, this.imageUrl});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      name: json['name'],
      imageUrl: json['cover'],
    );
  }
}
