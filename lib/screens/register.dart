import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/textinput.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerButtonAction = TapGestureRecognizer();

  @override
  void didChangeDependencies() {
    _registerButtonAction.onTap = () {
      Navigator.pop(context);
    };
    super.didChangeDependencies();
  }

  Widget _imageSection() {
    return const Center(
      child: Image(
        image: AssetImage("assets/images/signup_image.png"),
        width: 200.0,
      ),
    );
  }

  Widget _titleSection() {
    return const Text(
      "Sign up",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40.0,
      ),
    );
  }

  Widget _formSection() {
    return Form(
      child: Column(
        children: const [
          TextInput(
            hint: "Email ID",
            icon: Icons.alternate_email_outlined,
          ),
          SizedBox(height: 10.0),
          TextInput(
            hint: "Full Name",
            icon: Icons.account_circle_outlined,
          ),
          SizedBox(height: 10.0),
          TextInput(
            hint: "Mobile",
            icon: Icons.phone,
          ),
          SizedBox(height: 10.0),
          TextInput(
            hint: "Password",
            icon: Icons.lock,
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyPolicytSection() {
    return RichText(
      text: const TextSpan(
        text: "By signing up, you agree to our ",
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: "Terms & Conditions ",
            recognizer: null,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: "and ",
          ),
          TextSpan(
            text: "Privacy Policy ",
            recognizer: null,
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSection() {
    return Center(
      child: RichText(
        text: TextSpan(
          text: "Joined us before? ",
          style: const TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: "Login",
              recognizer: _registerButtonAction,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _imageSection(),
              const Spacer(),
              _titleSection(),
              const SizedBox(height: 20.0),
              _formSection(),
              const SizedBox(height: 10.0),
              _buildPrivacyPolicytSection(),
              const SizedBox(height: 10.0),
              Button(label: "Continue", onPressed: () {}),
              const SizedBox(height: 10.0),
              _buildBottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
