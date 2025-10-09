import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scholaria1_app/constants.dart';
import 'package:scholaria1_app/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final String svgAsset;
  final bool isPassword;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.svgAsset,
    this.isPassword = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.07,
        vertical: height * 0.01,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: isPassword,
        style: AppTextStyles.poppinsRegular(
          fontSize: width * 0.05,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: SvgPicture.asset(
              svgAsset,
              width: width * 0.05,
              height: width * 0.05,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: width * 0.10,
            minHeight: width * 0.10,
          ),
          labelText: label,
          labelStyle: AppTextStyles.comfortaaMedium(
            fontSize: width * 0.04,
            color: KPrimaryColor,
          ),
          hintText: hint,
          hintStyle: AppTextStyles.poppinsRegular(
            fontSize: width * 0.035,
            color: Colors.grey,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: height * 0.018,
            horizontal: width * 0.04,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.07),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.07),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.07),
            borderSide: const BorderSide(color: KPrimaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
