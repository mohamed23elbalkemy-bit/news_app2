import 'package:flutter/material.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "NewsGlobe",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text("Skip", style: TextStyle(color: Colors.grey,fontSize: 20)),
        ],
      ),
    );
  }
}
