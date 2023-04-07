import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../common/app_constants.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        // 'assets/master-web-hero-image.png',
        'assets/bije.png',
        width: kdDesktopMaxContentWidth * 0.4,
        // height: double.infinity,
        height: getValueForScreenType<double>(
            context: context,
            mobile: 650,
          desktop: double.infinity,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}