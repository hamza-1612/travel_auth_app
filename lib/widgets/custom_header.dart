import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Reusable title and subtitle header component (Lemon 32px title, Lexend Deca 15px subtitle).
class CustomHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.lemon(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF204188),
            height: 1.1,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.lexendDeca(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
