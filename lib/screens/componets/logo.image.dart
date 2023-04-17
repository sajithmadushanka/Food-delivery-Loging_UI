import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.zero,
      child: Image(
        width: 300,
        height: 200,
        image: AssetImage(
          'lib/assets/images/logo_.png',
        ),
      ),
    );
  }
}
