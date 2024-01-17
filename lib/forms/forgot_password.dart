import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordUIState createState() => _ForgotPasswordUIState();
}

class _ForgotPasswordUIState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildTextField('Email', 'Enter your email', emailController),
            const SizedBox(height: 20),
            _buildButtons(),
            const SizedBox(height: 20),
            _buildSignupButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String hintText, TextEditingController controller) {
    return Container(
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 38, 83, 120),
            ),
          ),
          labelText: labelText,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }

  Widget _buildButtons() {
  return Container(
    alignment: Alignment.center,
    child: ElevatedButton(
      onPressed: () {
        // Implement your logic for password reset here
        print('Password reset initiated for ${emailController.text}');
      },
      style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 38, 83, 120),
        onPrimary: Colors.white,
      ),
      child: const Text('RESET PASSWORD'),
    ),
  );
}


  Widget _buildSignupButton() {
    return TextButton(
      onPressed: () {
        // Navigate to the Signup screen
        Navigator.pop(context); // Close the Forgot Password screen
      },
      child: const Text('Don\'t have an account?  Sign Up'),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: ForgotPassword(),
    ),
  );
}
