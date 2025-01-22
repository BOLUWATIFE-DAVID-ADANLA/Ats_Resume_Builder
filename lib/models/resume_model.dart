import 'package:ats_resume_builder/models/education.dart';
import 'package:ats_resume_builder/models/project.dart';
import 'package:ats_resume_builder/models/skills.dart';
import 'package:ats_resume_builder/models/work_experience_model.dart';

class Resume {
  final String name;
  final String email;
  final String address;
  final String? linkedin;
  final String? github;
  final String phoneNumber;
  final String profile;
  List<WorkExperience> experiences;
  List<Project> projects;
  List<Skills> technicalSkills;
  List<Education> education;

  Resume(
      {required this.address,
      required this.education,
      required this.email,
      required this.experiences,
      this.github,
      this.linkedin,
      required this.name,
      required this.phoneNumber,
      required this.profile,
      required this.projects,
      required this.technicalSkills});
}

class Certifications {}
