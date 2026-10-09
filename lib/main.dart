import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioDataPage(),
    );
  }
}

class BioDataPage extends StatefulWidget {
  const BioDataPage({super.key});
  @override
  State<BioDataPage> createState() => _BioDataPageState();
}

class _BioDataPageState extends State<BioDataPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final birthController = TextEditingController();
  final placeBirthController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final currentAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final citizenshipController = TextEditingController();
  final nationalityController = TextEditingController();
  final civilStatusController = TextEditingController();
  final elementaryController = TextEditingController();
  final elementaryYearController = TextEditingController();
  final highController = TextEditingController();
  final highYearController = TextEditingController();
  final collegeController = TextEditingController();
  final collegeYearController = TextEditingController();
  String output = '';
  void submitForm() {
    setState(() {
      output =
          '''
Name: ${nameController.text}
Mobile Number: ${mobileController.text}
Email Address: ${emailController.text}
Date of Birth: ${birthController.text}
Place of Birth: ${placeBirthController.text}
Age: ${ageController.text}
Gender: ${genderController.text}
Current Address: ${currentAddressController.text}
Permanent Address: ${permanentAddressController.text}
Citizenship: ${citizenshipController.text}
Nationality: ${nationalityController.text}
Civil Status: ${civilStatusController.text}
Elementary School: ${elementaryController.text}
Elementary Graduate Date: ${elementaryYearController.text}
High School: ${highController.text}
High School Graduate Date: ${highYearController.text}
College School: ${collegeController.text}
College Graduate Date: ${collegeYearController.text}''';
    });
  }

  Widget paperField({
    required String label,
    required TextEditingController controller,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 210,
            child: Text(
              label,
              style: const TextStyle(
                fontFamily: 'serif',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Text(
            ':',
            style: TextStyle(
              fontFamily: 'serif',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
              style: const TextStyle(fontFamily: 'serif', fontSize: 15),
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 6),
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionHeading(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, bottom: 16),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'serif',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    birthController.dispose();
    placeBirthController.dispose();
    ageController.dispose();
    genderController.dispose();
    currentAddressController.dispose();
    permanentAddressController.dispose();
    citizenshipController.dispose();
    nationalityController.dispose();
    civilStatusController.dispose();
    elementaryController.dispose();
    elementaryYearController.dispose();
    highController.dispose();
    highYearController.dispose();
    collegeController.dispose();
    collegeYearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(28),
        child: Center(
          child: SizedBox(
            width: 720,
            child: Container(
              padding: const EdgeInsets.all(34),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 3),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'BIODATA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'serif',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 26),
                    paperField(label: 'Name', controller: nameController),
                    paperField(
                      label: 'Mobile Number',
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                    ),
                    paperField(
                      label: 'Email Address',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    paperField(
                      label: 'Date of Birth',
                      controller: birthController,
                    ),
                    paperField(
                      label: 'Place of Birth',
                      controller: placeBirthController,
                    ),
                    paperField(
                      label: 'Age',
                      controller: ageController,
                      keyboardType: TextInputType.number,
                    ),
                    paperField(label: 'Gender', controller: genderController),
                    paperField(
                      label: 'Current Address',
                      controller: currentAddressController,
                    ),
                    paperField(
                      label: 'Permanent Address',
                      controller: permanentAddressController,
                    ),
                    paperField(
                      label: 'Citizenship',
                      controller: citizenshipController,
                    ),
                    paperField(
                      label: 'Nationality',
                      controller: nationalityController,
                    ),
                    paperField(
                      label: 'Civil Status',
                      controller: civilStatusController,
                    ),
                    sectionHeading('EDUCATIONAL QUALIFICATION'),
                    paperField(
                      label: 'Elementary School',
                      controller: elementaryController,
                    ),
                    paperField(
                      label: 'Elementary Graduate Date',
                      controller: elementaryYearController,
                    ),
                    paperField(
                      label: 'High School',
                      controller: highController,
                    ),
                    paperField(
                      label: 'High School Graduate Date',
                      controller: highYearController,
                    ),
                    paperField(
                      label: 'College School',
                      controller: collegeController,
                    ),
                    paperField(
                      label: 'College Graduate Date',
                      controller: collegeYearController,
                    ),

                    const SizedBox(height: 28),
                    ElevatedButton(
                      onPressed: submitForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Submit'),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'OUTPUT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'serif',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                      ),
                      child: Text(
                        output.isEmpty
                            ? 'Your submitted information will appear here.'
                            : output,
                        style: const TextStyle(
                          fontFamily: 'serif',
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
