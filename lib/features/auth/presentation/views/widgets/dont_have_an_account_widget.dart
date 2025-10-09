import 'package:flutter/material.dart';
import 'package:scholaria1_app/core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.onPressed,
  });

  final String text1;
  final String text2;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    final double checkboxScale = width / 400;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.07,
        vertical: height * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
            scale: checkboxScale,
            child: Checkbox(
              value: false,
              onChanged: (val) {},
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              checkColor: Colors.white,
              activeColor: const Color(0xff6C7278),
              side: const BorderSide(
                color: Color(0xff6C7278),
                width: 1.5,
              ),
            ),
          ),
          SizedBox(width: width * 0.015),
          Flexible(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: text1,
                    style: AppTextStyles.comfortaaMedium(
                      fontSize: width * 0.032,
                    ).copyWith(color: const Color(0xff6C7278)),
                  ),
                  TextSpan(
                    text: text2,
                    style: AppTextStyles.comfortaaSemiBold(
                      fontSize: width * 0.032,
                    ).copyWith(color: const Color(0xff4D81E7)),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
