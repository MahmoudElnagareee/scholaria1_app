import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scholaria1_app/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 2),
            onEnd: () {},
            child: SvgPicture.asset(
              Assets.imagesGroup_1686557096,
              height: size.width ,
              width: size.width * 0.9,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      opacity = 1.0;
    });
    await Future.delayed(const Duration(seconds: 1));
  }
}
