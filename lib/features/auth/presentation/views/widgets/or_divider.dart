import 'package:flutter/material.dart';
import 'package:scholaria1_app/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;

    return Row(
      children: [
        const Expanded(
          child: Divider(color: Color(0xffDCDEDE)),
        ),
        SizedBox(width: width * 0.045), 
        Text(
          'Or',
          style: AppTextStyles.comfortaaRegular(
            fontSize: width * 0.03, 
          ).copyWith(color: const Color(0xff6C7278)),
        ),
        SizedBox(width: width * 0.045), 
        const Expanded(
          child: Divider(color: Color(0xffDCDEDE)),
        ),
      ],
    );
  }
}
