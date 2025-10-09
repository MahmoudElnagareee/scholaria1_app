import 'package:flutter/material.dart';
import 'package:scholaria1_app/features/auth/presentation/views/login_view.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/tab_button_selector.dart';


class TabSelector extends StatelessWidget {
  const TabSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final String? currentRoute = ModalRoute.of(context)?.settings.name;

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
            isSelected: currentRoute == LoginView.routeName,
            onTap: () {
              if (currentRoute != LoginView.routeName) {
                Navigator.popAndPushNamed(context, LoginView.routeName);
              }
            },
          ),
          TabButton(
            text: "Sign Up",
            //isSelected: currentRoute == SignUpView.id,
            onTap: () {
              //if (currentRoute != SignUpView.id) {
                //Navigator.popAndPushNamed(context, SignUpView.id);
              //}
            }, isSelected: false,
          ),
        ],
      ),
    );
  }
}
