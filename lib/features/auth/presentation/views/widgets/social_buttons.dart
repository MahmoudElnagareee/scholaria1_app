import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
    this.onTap,
    required this.assetPath,
  });

  final void Function()? onTap;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    double buttonWidth = size.width * 0.22; // تقريباً 80–100px حسب الجهاز
    double buttonHeight = size.height * 0.065; // تقريباً 48–55px

    // 🔹 لمنع صغر الحجم جدًا على الشاشات الصغيرة
    if (buttonWidth < 75) buttonWidth = 75;
    if (buttonHeight < 48) buttonHeight = 48;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.012), // gap متجاوب ≈ 8–10px
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Center(
            child: SvgPicture.asset(
              assetPath,
              width: buttonWidth * 0.5, // متجاوب حسب حجم الزر
              height: buttonHeight * 0.5,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
