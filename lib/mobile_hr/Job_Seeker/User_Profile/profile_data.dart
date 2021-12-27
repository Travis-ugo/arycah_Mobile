class UserData {
  final String userName;
  final String profilePicture;
  final String count;
  final String saved;
  final String interView;

  UserData({
    required this.profilePicture,
    required this.count,
    required this.saved,
    required this.interView,
    required this.userName,
  });
}

UserData profile = UserData(
  profilePicture: 'assets/1.jpg',
  count: '0',
  saved: '0',
  interView: '0',
  userName: 'Olawale Okeowo',
);

List<CardData> cardData = [
  CardData(
    title: 'Career Summary',
    subTitle: 'By including a Career Summary in your profile, '
        'you can easily provide a quick glance at your '
        'career history for anyone viewing your profile. ',
  ),
  CardData(
    title: 'Work Experience',
    subTitle:
        'Describe any work experience you have, such as an internship and part-time work',
  ),
  CardData(
    title: 'Education',
    subTitle:
        "List your education and any degrees you've earned, such as high school, college or university.",
  ),
  CardData(
    title: 'Job Skills',
    subTitle:
        'Add your skills to help recruiters find you, and let them know where your strengths lie',
  ),
  CardData(
    title: 'Associations',
    subTitle:
        'Are you a member of a professional association or organization? Enhance your profile by adding them.',
  ),
  CardData(
    title: 'Certificates and Awards',
    subTitle:
        'What achievements have you made so far? You can add them to your professional profile to help them grow.',
  ),
  CardData(
    title: 'Language Skills',
    subTitle:
        'Does your vocabulary include multiple languages? You should let potential employers know.',
  ),
  CardData(
    title: 'Upload CV',
    subTitle: 'Upload: 5MB max in DOC, PDF',
  ),
];

class CardData {
  final String title;
  final String subTitle;

  CardData({
    required this.title,
    required this.subTitle,
  });
}
