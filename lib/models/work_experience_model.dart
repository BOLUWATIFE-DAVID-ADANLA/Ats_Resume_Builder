class WorkExperience {
  final String jobTitle;
  final String role;
  final String? location;
  List<String> roleDescriptions;

  WorkExperience(
      {required this.jobTitle,
      required this.location,
      required this.role,
      required this.roleDescriptions});
}
