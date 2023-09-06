import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  String imagePath;

  SocialMediaButton({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Image.asset(
        imagePath,
        height: 30,
      ),
    );
  }
}
