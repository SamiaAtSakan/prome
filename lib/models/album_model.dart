class Album {
  final String name;
  final String? imageUrl;

  Album({
    required this.name,
    this.imageUrl,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['postFileName'],
      imageUrl: json['postFile'],
    );
  }
}
