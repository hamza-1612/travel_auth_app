import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_header.dart';
import '../widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF6FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              // Title and Subtitle
              const CustomHeader(
                title: 'Forgot your password',
                subtitle: "Enter your username and we'll help\nyou reset your password.",
              ),
              const SizedBox(height: 45),

              // Email or Username Input
              const CustomTextField(
                hintText: 'Email or username',
              ),
              const SizedBox(height: 35),

              // Reset Password Button
              CustomButton(
                text: 'Reset Password',
                onPressed: () {
                  // Action for Reset Password
                },
              ),
              const SizedBox(height: 25),

              // SignIn Link
              GestureDetector(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  'SignIn',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 18,
                    color: const Color(0xFF38B6FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Spacer(),

              // Back Button at Bottom Left
              Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Color(0xFF204188),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
