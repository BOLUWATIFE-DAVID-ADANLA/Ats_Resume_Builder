class Education {
  final String educationLevel;
  final String school;
  final String? cgpa;
  final String? formattedDate;

  Education(
      {required this.cgpa,
      required this.educationLevel,
      required this.school,
      this.formattedDate});
}
