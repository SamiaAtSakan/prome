class UserData {
  final dynamic followersCount;
  final dynamic followingCount;
  final int joinedGroupsCount;
  final int likedPagesCount;

  UserData({
    required this.followersCount,
    required this.followingCount,
    required this.joinedGroupsCount,
    required this.likedPagesCount,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      followersCount: json['followers'],
      followingCount: json['following'],
      joinedGroupsCount: json['joined_groups']?.length ?? 0,
      likedPagesCount: json['liked_pages']?.length ?? 0,
    );
  }
}
