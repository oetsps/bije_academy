import 'package:flutter/material.dart';

import '../../common/shared_styles.dart';

class AcademyIcon extends StatelessWidget {
  const AcademyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'BijeOchie Academy',
      style: ktsBodyRegular.copyWith(fontWeight: FontWeight.w800),
    );
  }
}