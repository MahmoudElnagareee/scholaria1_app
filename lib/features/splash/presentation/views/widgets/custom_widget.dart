import 'package:flutter/material.dart';
import 'package:scholaria1_app/constants.dart';
import 'package:scholaria1_app/core/utils/app_text_styles.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Column(
      children: [
        Text(
          'Learn Anything, Anywhere',
          textAlign: TextAlign.center,
          style: AppTextStyles.poppinsSemiBold(fontSize: width * 0.08, color: Colors.white),
        ),

        SizedBox(height: height * 0.03),

        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffB4CDF7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.12),
            ),
            minimumSize: Size(double.infinity, height * 0.065),
            elevation: 0,
          ),
          child: Text(
            'Get Started',
            style: AppTextStyles.poppinsSemiBold(fontSize: width * 0.05, color: KPrimaryColor),
          ),
        ),
      ],
    );
  }
}
