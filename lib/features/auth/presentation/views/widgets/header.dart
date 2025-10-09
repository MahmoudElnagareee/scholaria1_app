import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scholaria1_app/constants.dart';
import 'package:scholaria1_app/core/utils/app_images.dart';
import 'package:scholaria1_app/core/utils/app_text_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: size.height * 0.08,
        left: size.width * 0.06,
        right: size.width * 0.06,
        bottom: size.height * 0.03, 
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [KPrimaryColor.withOpacity(.8), KPrimaryColor],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),

      
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesLogo,
                  width: size.width * 0.25,
                  height: size.height * 0.058,
                ),
              ],
            ),

            SizedBox(height: size.height * 0.03),

            Text(
              "Get Started now",
              style: AppTextStyles.poppinsSemiBold(
                fontSize: size.width * 0.08,
                color: Colors.white,
              ),
            ),

            SizedBox(height: size.height * 0.01),

            Text(
              "Create an account or log in to explore about our app",
              style: AppTextStyles.poppinsRegular(
                fontSize: size.width * 0.03,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
