import 'package:flutter/material.dart';
import 'package:scholaria1_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.color, this.onTap, required this.title});

  final Color? color;
  final VoidCallback? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        width: size.width * 0.87,
        height: size.height * 0.07,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: KPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
