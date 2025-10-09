import 'package:flutter/material.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SignUpViewBody(),
    );
  }
}
