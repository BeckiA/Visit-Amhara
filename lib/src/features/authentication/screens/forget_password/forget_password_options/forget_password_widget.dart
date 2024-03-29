import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  ForgetPasswordBtnWidget(
      {required this.icon,
      required this.title,
      required this.subTitle,
      required this.onTap});

  final IconData icon;
  final String title, subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final currentTheme = MediaQuery.of(context).platformBrightness;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: currentTheme == ThemeData.light
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade200)
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black26),
        child: Row(
          children: [
            Icon(
              icon,
              size: 60.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
