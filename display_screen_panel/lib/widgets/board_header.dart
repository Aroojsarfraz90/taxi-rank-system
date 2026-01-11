import 'package:flutter/material.dart';

class BoardHeader extends StatelessWidget {
  final bool isEnglish;
  final ValueChanged<bool> onToggle;

  const BoardHeader({
    super.key,
    required this.isEnglish,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
		Image.asset(
            'assets/logo.png', // Make sure logo is in assets folder
            width: 240,          // Adjust proportionally (half of 329/800)
            height: 65,
            fit: BoxFit.contain,
          ),
          const Text(
            "TAXI RANK DEPARTURES",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 34,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(width: 24),
          Switch(value: isEnglish, onChanged: onToggle),
          Text(isEnglish ? "EN" : "ZU",
              style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
