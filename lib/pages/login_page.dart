import 'package:flutter/material.dart';
import 'package:project2/widgets/app_button.dart';
import 'package:project2/widgets/app_text_field.dart';
import 'package:project2/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget { 
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea  (
       child:SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image.png', width: 200, height: 200),
            const SizedBox(height: 16.0),
            const Text('Welcome back',
            style: TextStyle(fontSize: 30),),
            const Text('Log in to continue',
            style: TextStyle(fontSize: 16),),
            const AppTextField(
              label: 'Email',
              icon: Icons.email,
            ),
            const SizedBox(height: 16.0),
            const AppTextField(
              label: 'Password',
              icon: Icons.lock,
              isPassword: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password logic here
                },
                child: const Text('Forgot Password?'),
              ),
            ),
            const SizedBox(height: 32.0),
            AppButton(
              onPressed: () {
                // Handle login logic here
              },
              text: 'Login',
            ),
            Row(children: [
              const Text('Don\'t have an account? '),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                },
                child: const Text('Sign Up'),
              ),
            ],)
          ],
        ),
      ),
    ));
  }
}