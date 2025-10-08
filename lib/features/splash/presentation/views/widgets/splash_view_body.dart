import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scholaria1_app/core/utils/app_images.dart';
import 'package:scholaria1_app/features/auth/presentation/views/login_view.dart';
import 'package:scholaria1_app/features/splash/presentation/views/widgets/custom_widget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _imageController;
  late AnimationController _buttonController;

  late Animation<double> _imageOpacity;
  late Animation<double> _buttonOpacity;
  late Animation<Offset> _buttonSlide;

  @override
  void initState() {
    super.initState();

    _imageController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _imageOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_imageController);

    _buttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _buttonOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_buttonController);

    _buttonSlide = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _buttonController, curve: Curves.easeOut),
        );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    await _imageController.forward();
    await Future.delayed(const Duration(milliseconds: 200));
    await _buttonController.forward();
  }

  @override
  void dispose() {
    _imageController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeTransition(
          opacity: _imageOpacity,
          child: SvgPicture.asset(
            Assets.imagesGroup_1686557096,
            height: height * 0.555,
            width: width,
            fit: BoxFit.fill,
          ),
        ),

        SizedBox(height: height * 0.06),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: SlideTransition(
            position: _buttonSlide,
            child: FadeTransition(
              opacity: _buttonOpacity,
              child: CustomWidget(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(LoginView.routeName);
                },
              ),
            ),
          ),
        ),

        SizedBox(height: height * 0.03),
      ],
    );
  }
}
