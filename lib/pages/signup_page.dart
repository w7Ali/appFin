import 'package:flutter/material.dart';
import '../forms/password_set.dart';
import 'package:financeapp/pages/login_page.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupUIState createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupPage> {
  DateTime? selectedDate;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  File? _image; // To store the selected image

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = '${selectedDate!.toLocal()}'.split(' ')[0];
      });
    }
  }

  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  

  void _navigateToLogin() {
    // Navigate to the login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Create Account'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image Upload Icon
              GestureDetector(
                onTap: () {
                  _getImage(); // Call function to choose image
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey,
                        child: _image != null
                            ? ClipOval(
                                child: Image.file(
                                  _image!,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : const Icon(
                                Icons.person,
                                size: 80.0,
                                color: Colors.white,
                              ),
                      ),
                      Positioned(
                        bottom:  0,
                        right: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: IconButton(
                            onPressed: () {
                              _getImage(); // Call function to choose image
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildTextFieldWithLabel('Your Name', _nameController, 'Enter your full name'),
              _buildTextFieldWithLabel('Username', _usernameController, 'Choose a username'),
              _buildTextFieldWithLabel('Email', _emailController, 'Enter your email'),
              _buildTextFieldWithLabel('Address', _addressController, 'Enter your address'),
              _buildTextFieldWithLabel('Phone Number', _phoneController, 'Enter your phone number'),
              _buildTextFieldWithLabel('Pin Code', _pinCodeController, 'Enter your pin code'),
              _buildTextFieldWithLabel('City', _cityController, 'Enter your city'),
              const SizedBox(height: 20),
              _buildSectionTitle('Date of Birth'),
              InkWell(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: _dateController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lightBlue,
                        ),
                      ),
                      hintText: 'Select Date of Birth',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildButtons(),
              const SizedBox(height: 20),
              _buildSignInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithLabel(String label, TextEditingController controller, String hintText) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          child: TextField(
            textAlign: TextAlign.center,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlue,
                ),
              ),
              hintText: hintText,
              labelText: label,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          // Navigate to the password setup page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PasswordSetup()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 38, 83, 120),
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
          child: const Center(
            child: Text(
              'NEXT',
              style: TextStyle(color: Colors.white),
            ),
          //),
        ),
      ),
    ],
  );
}

  Widget _buildSignInButton() {
    return TextButton(
      onPressed: () {
        // Navigate to the login page
        _navigateToLogin();
      },
      child: const Text('Already signed up? Log in.', style: TextStyle(color: Colors.blue)),
    );
  }
}
