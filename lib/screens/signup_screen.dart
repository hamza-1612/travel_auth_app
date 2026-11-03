import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_header.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/airplane_illustration.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF6FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              // Top Airplane Illustration (Dark Blue for SignUp)
              const AirplaneIllustration(
                isSignUp: true,
              ),
              const SizedBox(height: 15),

              // Title and Subtitle
              const CustomHeader(
                title: 'Get Started',
                subtitle: 'Start opening your new acconut',
              ),
              const SizedBox(height: 25),

              // Full Name Input
              const CustomTextField(
                hintText: 'Full Name',
              ),
              const SizedBox(height: 14),

              // Email Input
              const CustomTextField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 14),

              // Password Input
              const CustomTextField(
                hintText: 'password',
                obscureText: true,
              ),
              const SizedBox(height: 14),

              // Check Password Input
              const CustomTextField(
                hintText: 'Check password',
                obscureText: true,
              ),
              const SizedBox(height: 30),

              // SignUp Button
              CustomButton(
                text: 'SignUp',
                onPressed: () {
                  // Action for SignUp
                },
              ),
              const SizedBox(height: 20),

              // Bottom Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ',
                    style: GoogleFonts.lexendDeca(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 14,
                        color: const Color(0xFF38B6FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
