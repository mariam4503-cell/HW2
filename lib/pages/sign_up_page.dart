import 'package:flutter/material.dart';
import 'package:project2/widgets/app_button.dart';
import 'package:project2/widgets/app_text_field.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Create an account',
                style: TextStyle(fontSize: 30),
              ),
              const Text('Sign up to get started',
                style: TextStyle(fontSize: 16),
              ),
              const AppTextField(
                label: 'Full Name',
                icon: Icons.person,
              ),
             const AppTextField(
                label: 'Email',
                icon: Icons.email,
              ),
              const SizedBox(height: 16.0),
              const AppTextField(
                label: 'Password',
                icon: Icons.lock,
                isPassword: true,
              ),const SizedBox(height: 16.0),
              const AppTextField(
                label: 'Confirm Password',
                icon: Icons.lock,
                isPassword: true,
              ),
              const SizedBox(height: 32.0),
              AppButton(
                onPressed: () {
                  // Handle sign up logic here
                },
                text: 'Create Account',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigate back to the login page
                    },
                    child: const Text('Login'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}