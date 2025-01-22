class WorkExperience {
  final String jobTitle;
  final String role;
  final String? location;
  List<String> roleDescriptions;
  final String? formattedDate;
  final bool isCurrentRole;

  WorkExperience(
      {required this.jobTitle,
      required this.location,
      required this.role,
      required this.roleDescriptions,
      this.isCurrentRole = false,
      this.formattedDate});
}
