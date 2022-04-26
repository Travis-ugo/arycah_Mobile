class CompanyData {
  final String companyName;
  final String jobDescription;
  final String location;
  final String compensation;
  final String numberOfApplicants;
  final String assets;

  CompanyData({
    required this.companyName,
    required this.jobDescription,
    required this.location,
    required this.assets,
    required this.compensation,
    required this.numberOfApplicants,
  });

  static CompanyData fromJson(Map<String, dynamic> json) {
    final data = json;
    return CompanyData(
      companyName: data['companyName'],
      jobDescription: data['jobDescription'],
      location: data['location'],
      compensation: data['companysPay'],
      numberOfApplicants: data['numberOfApplicants'],
      assets: data['assets'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'companyName': companyName,
      'jobDescription': jobDescription,
      ' location': location,
      'compensation': compensation,
      ' numberOfApplicants': numberOfApplicants,
      'assets': assets,
    };
  }
}
