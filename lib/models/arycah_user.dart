class ArycahUser {
  final String userName;
  final String profilePicture;
  final String emailAddress;

  ArycahUser(
      {required this.userName,
      required this.profilePicture,
      required this.emailAddress});

  static ArycahUser fromJson(Map<String, dynamic> json) {
    final data = json;
    return ArycahUser(
      emailAddress: data['userName'],
      profilePicture: data['profilePicture'],
      userName: data['emailAddress'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'profilePicture': profilePicture,
      'emailAddress': emailAddress,
    };
  }
}
