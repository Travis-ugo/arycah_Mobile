class CompanyData {
  final String companyName;
  final String jobdescription;
  final String location;
  final String companysPay;
  final String numberOfApplicants;
  final String assest;

  CompanyData({
    required this.companyName,
    required this.jobdescription,
    required this.location,
    required this.assest,
    required this.companysPay,
    required this.numberOfApplicants,
  });
}

List<CompanyData> companyData = [
  CompanyData(
      companyName: "Jolade Fashion",
      jobdescription: "Dispact Rider",
      location: "Lagos, Nigeria",
      assest: '',
      companysPay: r'$250',
      numberOfApplicants: "10"),
  CompanyData(
      companyName: "Plumville International",
      jobdescription: "IELTS Tutor",
      location: "Lagos, Nigeria",
      assest: '',
      numberOfApplicants: "3",
      companysPay: r'$100'),
  CompanyData(
      companyName: "UBA",
      jobdescription: "Product Designer",
      location: "Abuja, Nigeria",
      assest: '',
      numberOfApplicants: "16",
      companysPay: r'$450'),
  CompanyData(
      companyName: "Mobile HR",
      jobdescription: "Content Creator",
      location: "Lagos, Nigeria",
      assest: '',
      numberOfApplicants: "6",
      companysPay: r'$50'),
  CompanyData(
      companyName: "Jolade Fashion",
      jobdescription: "Dispact Rider",
      location: "Lagos, Nigeria",
      assest: '',
      numberOfApplicants: "1",
      companysPay: r'$300'),
];
