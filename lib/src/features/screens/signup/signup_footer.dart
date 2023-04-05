import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/features/screens/login/login_screen.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: VAFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(VALoginImage),
                width: 20,
              ),
              label: Text(VASignInWithGoogle.toUpperCase())),
        ),
        TextButton(
            onPressed: () {
              Get.to(LoginScreen());
            },
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: VAAlreadyAcc,
                  style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: VALogin.toUpperCase())
            ])))
      ],
    );
  }
}