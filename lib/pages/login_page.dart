import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:financeapp/forms/forgot_password.dart';
import 'package:financeapp/pages/home_page.dart';
import 'signup_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(20.0),
          //   topRight: Radius.circular(20.0),
          // ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 38, 83, 120), Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              _buildWelcomeContainer(),
              _buildSvgIconsContainer(),
              _buildLoginForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeContainer() {
    return Container(
      padding: const EdgeInsets.all(23.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 38, 83, 120), Color.fromARGB(255, 38, 83, 120)],
          stops: [0.5, 0.5],
        ),
      ),
      alignment: Alignment.topCenter,
      child: const Text(
        'WELCOME!',
        style: TextStyle(
          fontFamily: 'sans-serif',
          color: Colors.white,
          fontSize: 34.0,
        ),
      ),
    );
  }

  Widget _buildSvgIconsContainer() {
    return Container(
      padding: const EdgeInsets.all(58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/dollor.svg',
            width: 280,
            height: 180,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                hintText: 'Username or Email',
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),

            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _handleLogin(context),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 38, 83, 120),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              child: Container(
                width: 50,
                height: 50,
                child: const Center(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => _navigateToForgotPassword(context),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

                const SizedBox(width: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "New to this app?",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () => _navigateToSignupPage(context),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    bool isValidCredentials = true; // Replace with your authentication logic

    if (isValidCredentials) {
      _showSuccessDialog(context);
    // ignore: dead_code
    } else {
      _showErrorDialog(context);
    }
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Login Successful'),
          content: const Text('You have successfully logged in!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const SizedBox(
                width: 50,
                height: 50,
                child: Center(
                  child: Text('OK'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
bool authenticateUser() {
  // Replace this with your actual authentication logic
  // For example, check the user's credentials against a database
  // Return true if authentication is successful, false otherwise
  return true;
}

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('Invalid username or password.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPassword()),
    );
  }

  void _navigateToSignupPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignupPage()),
    );
  }
}
