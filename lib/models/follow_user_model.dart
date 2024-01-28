class FollowUserModel {
  final int id;
  final String name;

  FollowUserModel({required this.id, required this.name});

  factory FollowUserModel.fromJson(Map<String, dynamic> json) {
    return FollowUserModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
