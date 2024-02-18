import 'dart:convert';

class ShowCommunity {
  final String id;
  final String? cover;
  final String? user_id;
  final String? group_name;
  final String? group_title;
  final String? about;
  final String? active;
  final String? group_id;
  final String? name;
  final String? category;
  var type;
  final String? members;

  ShowCommunity(
      {required this.id,
      this.user_id,
      this.group_title,
      this.group_name,
      this.name,
      this.active,
      this.group_id,
      this.cover,
      this.category,
      this.type,
      this.members,
      this.about});

  factory ShowCommunity.fromJson(Map<String, dynamic> json) {
    return ShowCommunity(
        id: json['id'],
        members: json['members'],
        user_id: json['cover'],
        about: json['about'],
        group_title: json['group_title'],
        name: json['name'],
        active: json['active'],
        category: json['category'],
        cover: json['cover'],
        type: json['id'],
        group_id: json['group_id'],
        group_name: json['group_name']);
  }
}
