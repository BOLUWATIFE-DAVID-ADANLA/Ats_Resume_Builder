import 'package:flutter/material.dart';

class CvCreationPage extends StatefulWidget {
  const CvCreationPage({super.key});

  @override
  State<CvCreationPage> createState() => _CvCreationPageState();
}

class _CvCreationPageState extends State<CvCreationPage> {
  // Personal Info
  String name = "";
  String email = "";
  String phone = "";
  String address = "";

  // Education
  String school = "";
  String degree = "";
  String year = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // 📝 Left Form Panel
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Personal Info",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    buildField(
                        "Full Name", (val) => setState(() => name = val)),
                    buildField("Email", (val) => setState(() => email = val)),
                    buildField("Phone", (val) => setState(() => phone = val)),
                    const SizedBox(height: 30),
                    const Divider(),
                    const Text("Education",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    buildField("School", (val) => setState(() => school = val)),
                    buildField("Degree", (val) => setState(() => degree = val)),
                    buildField("Year", (val) => setState(() => year = val)),
                    const SizedBox(height: 30),
                    const Divider(),
                    const Text("Education",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    buildField("School", (val) => setState(() => school = val)),
                    buildField("Degree", (val) => setState(() => degree = val)),
                    buildField("Year", (val) => setState(() => year = val)),
                    const SizedBox(height: 30),
                    const Divider(),
                    const Text("Education",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    buildField("School", (val) => setState(() => school = val)),
                    buildField("Degree", (val) => setState(() => degree = val)),
                    buildField("Year", (val) => setState(() => year = val)),
                    const SizedBox(height: 30),
                    const Divider(),
                    const Text("Education",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    buildField("School", (val) => setState(() => school = val)),
                    buildField("Degree", (val) => setState(() => degree = val)),
                    buildField("Year", (val) => setState(() => year = val)),
                    const SizedBox(height: 30),
                    const Divider(),
                    const Text("Education",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    buildField("School", (val) => setState(() => school = val)),
                    buildField("Degree", (val) => setState(() => degree = val)),
                    buildField("Year", (val) => setState(() => year = val)),
                  ],
                ),
              ),
            ),
          ),

          // 🖨️ Right CV Preview Panel
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.grey.shade300,
              alignment: Alignment.center,
              child: Container(
                width: 595,
                height: 842,
                color: Colors.white,
                padding: const EdgeInsets.all(40),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Center(
                        child: Text(
                          name.isNotEmpty ? name : "Adeola Emeka Cynthia",
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(phone.isNotEmpty ? phone : "+1234567890"),
                          const SizedBox(width: 10),
                          Text(email.isNotEmpty
                              ? email
                              : "adanlaboluwatife@gmail.com"),
                          const SizedBox(width: 10),
                          Text(address.isNotEmpty ? address : "Github"),
                        ],
                      ),

                      const SizedBox(height: 30),

                      // Education Section
                      const Text("Education",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Text(
                        school.isNotEmpty
                            ? "$degree at $school ($year)"
                            : "Degree at School (Year)",
                        style: const TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 40),
                      const Divider(),
                      const Text("Experience, Skills, etc...",
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildField(String label, Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}

// --- Reusable Widgets ---

class SectionButton extends StatelessWidget {
  final String label;

  const SectionButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        onPressed: () {
          // Switch form section
        },
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;

  const CustomTextField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class CvBuilderHome extends StatefulWidget {
//   const CvBuilderHome({super.key});

//   @override
//   State<CvBuilderHome> createState() => _CvBuilderHomeState();
// }

// class _CvBuilderHomeState extends State<CvBuilderHome> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController professionController = TextEditingController();
//   final TextEditingController summaryController = TextEditingController();

//   List<Education> educationList = [Education()];
//   List<Experience> experienceList = [Experience()];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('CV Builder')),
//       body: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextField(
//                     controller: nameController,
//                     decoration: const InputDecoration(labelText: 'Full Name'),
//                     onChanged: (_) => setState(() {}),
//                   ),
//                   TextField(
//                     controller: professionController,
//                     decoration: const InputDecoration(labelText: 'Profession'),
//                     onChanged: (_) => setState(() {}),
//                   ),
//                   TextField(
//                     controller: summaryController,
//                     decoration: const InputDecoration(labelText: 'Summary'),
//                     maxLines: 4,
//                     onChanged: (_) => setState(() {}),
//                   ),
//                   const SizedBox(height: 16),
//                   const Text('Education',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   ...educationList.map((e) => buildEducationField(e)).toList(),
//                   TextButton.icon(
//                     onPressed: () {
//                       setState(() => educationList.add(Education()));
//                     },
//                     icon: const Icon(Icons.add),
//                     label: const Text('Add Education'),
//                   ),
//                   const SizedBox(height: 16),
//                   const Text('Experience',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   ...experienceList
//                       .map((e) => buildExperienceField(e))
//                       .toList(),
//                   TextButton.icon(
//                     onPressed: () {
//                       setState(() => experienceList.add(Experience()));
//                     },
//                     icon: const Icon(Icons.add),
//                     label: const Text('Add Experience'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const VerticalDivider(),
//           Expanded(
//             flex: 3,
//             child: Container(
//               padding: const EdgeInsets.all(32.0),
//               color: Colors.grey[100],
//               child: Center(
//                 child: Container(
//                   width: 595, // A4 width in points (8.27 inch * 72)
//                   height: 842, // A4 height in points (11.69 inch * 72)
//                   padding: const EdgeInsets.all(24.0),
//                   color: Colors.white,
//                   child: buildCvPreview(),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget buildEducationField(Education education) {
//     return Column(
//       children: [
//         TextField(
//           decoration: const InputDecoration(labelText: 'School Name'),
//           onChanged: (value) => setState(() => education.school = value),
//         ),
//         TextField(
//           decoration: const InputDecoration(labelText: 'Degree'),
//           onChanged: (value) => setState(() => education.degree = value),
//         ),
//         const SizedBox(height: 8),
//       ],
//     );
//   }

//   Widget buildExperienceField(Experience experience) {
//     return Column(
//       children: [
//         TextField(
//           decoration: const InputDecoration(labelText: 'Company'),
//           onChanged: (value) => setState(() => experience.company = value),
//         ),
//         TextField(
//           decoration: const InputDecoration(labelText: 'Role'),
//           onChanged: (value) => setState(() => experience.role = value),
//         ),
//         const SizedBox(height: 8),
//       ],
//     );
//   }

//   Widget buildCvPreview() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Center(
//           child: Text(nameController.text,
//               style:
//                   const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//         ),
//         Text(professionController.text, style: const TextStyle(fontSize: 18)),
//         const SizedBox(height: 16),
//         Text(summaryController.text),
//         const SizedBox(height: 24),
//         const Text('Education',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//         ...educationList.map((e) => Text('${e.degree}, ${e.school}')).toList(),
//         const SizedBox(height: 16),
//         const Text('Experience',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//         ...experienceList
//             .map((e) => Text('${e.role} at ${e.company}'))
//             .toList(),
//       ],
//     );
//   }
// }

// class Education {
//   String school = '';
//   String degree = '';
// }

// class Experience {
//   String company = '';
//   String role = '';
// }
