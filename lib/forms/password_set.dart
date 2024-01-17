import 'package:flutter/material.dart';
import 'package:financeapp/pages/home_page.dart';

class PasswordSetup extends StatefulWidget {
  const PasswordSetup({Key? key}) : super(key: key);

  @override
  _PasswordSetupState createState() => _PasswordSetupState();
}

class _PasswordSetupState extends State<PasswordSetup> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Setup'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            _buildTextField('Password', 'Enter your password', _passwordController, isPassword: true),
            const SizedBox(height: 20),
            _buildTextField('Confirm Password', 'Re-enter your password', _confirmPasswordController, isPassword: true),
            const SizedBox(height: 20),
            _buildButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String hintText, TextEditingController controller, {bool isPassword = false}) {
    return Container(
      width: 300,
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.lightBlue,
            ),
          ),
          labelText: labelText,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          // Add logic to validate and save the password
          String password = _passwordController.text;
          String confirmPassword = _confirmPasswordController.text;

          if (password.isNotEmpty && confirmPassword.isNotEmpty) {
            if (password == confirmPassword) {
              // Passwords match, show success dialog and navigate to the next screen
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Password Set Successfully'),
                    content: const Text('You have successfully set your password!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage())); // Navigate to the home screen
                           },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            } else {
              // Passwords do not match, show an error message
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Passwords do not match. Please re-enter your passwords.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          } else {
            // Show an error message or handle the case when the password is empty
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Error'),
                  content: const Text('Please enter a valid password.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Close the dialog
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          }
        },
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 38, 83, 120),
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'SIGN UP',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
