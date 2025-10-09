import 'package:flutter/material.dart';
import 'package:scholaria1_app/constants.dart';
import 'package:scholaria1_app/core/utils/app_text_styles.dart';

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function()? onTap;

  const TabButton({
    super.key,
    required this.text,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: height * 0.012),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(width * 0.025),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: KPrimaryColor.withOpacity(0.25),
                      blurRadius: width * 0.03,
                      offset: Offset(0, height * 0.004),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.comfortaaMedium(
                fontSize: width * 0.035,
                color: isSelected ? KPrimaryColor : Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
