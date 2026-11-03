import 'package:flutter/material.dart';

/// Component for displaying the airplane illustration asset images from assets/images/.
class AirplaneIllustration extends StatelessWidget {
  final bool isSignUp;

  const AirplaneIllustration({
    super.key,
    this.isSignUp = false,
  });

  @override
  Widget build(BuildContext context) {
    final String assetPath = isSignUp
        ? 'assets/images/airplane_dark.png'
        : 'assets/images/airplane_light.png';

    return SizedBox(
      width: 180,
      height: 160,
      child: Image.asset(
        assetPath,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          // Fallback if image asset fails to load
          return Icon(
            Icons.flight_takeoff,
            size: 80,
            color: isSignUp ? const Color(0xFF204188) : const Color(0xFF38B6FF),
          );
        },
      ),
    );
  }
}
