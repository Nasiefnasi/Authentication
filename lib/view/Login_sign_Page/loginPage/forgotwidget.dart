import 'package:companytask/view/Login_sign_Page/forgotpassword/forgotPassword.dart';
import 'package:companytask/view/core.dart';
import 'package:flutter/material.dart';

class ForgotPasswordwidget extends StatelessWidget {
  const ForgotPasswordwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPasswordPage(),
                ),
              );
            },
            child: const Text(
              "forgot password",
              style: TextStyle(color: kbuttoncolorblue),
            ),
          ),
        ],
      ),
    );
  }
}
