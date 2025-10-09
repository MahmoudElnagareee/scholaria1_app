import 'package:flutter/material.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/tab_button_selector.dart';

class TabSelector extends StatelessWidget {
  final bool isLoginSelected;
  final VoidCallback onLoginTap;
  final VoidCallback onSignUpTap;

  const TabSelector({
    super.key,
    required this.isLoginSelected,
    required this.onLoginTap,
    required this.onSignUpTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          TabButton(
            text: "Log In",
            isSelected: isLoginSelected,
            onTap: onLoginTap,
          ),
          TabButton(
            text: "Sign Up",
            isSelected: !isLoginSelected,
            onTap: onSignUpTap,
          ),
        ],
      ),
    );
  }
}
