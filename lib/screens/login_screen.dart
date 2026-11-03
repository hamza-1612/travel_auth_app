import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_header.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/airplane_illustration.dart';
import 'signup_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              // Top Airplane Illustration
              const AirplaneIllustration(
                isSignUp: false,
              ),
              const SizedBox(height: 15),

              // Title and Subtitle
              const CustomHeader(
                title: 'Welcome Back',
                subtitle: 'Signin to access your account',
              ),
              const SizedBox(height: 35),

              // Email Input
              const CustomTextField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 18),

              // Password Input
              const CustomTextField(
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot password',
                    style: GoogleFonts.lexendDeca(
                      fontSize: 12,
                      color: const Color(0xFF38B6FF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Login Button
              CustomButton(
                text: 'Login',
                onPressed: () {
                  // Action for Login
                },
              ),
              const SizedBox(height: 20),

              // Bottom SignUp Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: GoogleFonts.lexendDeca(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'SignUp',
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
