class Event {
  final String name;
  final String? imageUrl;
  final String? location;
  final String? start_date;
  final String? description;
  final String? end_date;
  final String? end_time;
  final String? start_time;
  var event_id;

  Event(
      {required this.name,
      this.imageUrl,
      this.start_date,
      this.location,
      this.start_time,
      this.end_date,
      this.end_time,
      this.event_id,
      this.description});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        name: json['name'],
        imageUrl: json['cover'],
        description: json['description'],
        start_date: json['start_date'],
        start_time: json['start_time'],
        end_date: json['end_date'],
        event_id: json['id'],
        end_time: json['end_time'],
        location: json['location']);
  }
}
