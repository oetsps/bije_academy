import 'package:bije_academy/ui/common/app_colors.dart';
import 'package:bije_academy/ui/common/ui_helpers.dart';
import 'package:bije_academy/ui/view/home/widgets/home_image.dart';
import 'package:bije_academy/ui/view/home/widgets/home_notify_button.dart';
import 'package:bije_academy/ui/view/home/widgets/home_subtitle.dart';
import 'package:bije_academy/ui/view/home/widgets/home_title.dart';
import 'package:bije_academy/ui/widgets/common/academy_icon.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/common/input_field.dart';
import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 50,
        ),
        children: const [
          AcademyIcon(),
          verticalSpaceLarge,
          HomeTitle(),
          verticalSpaceTiny,
          HomeSubtitle(),
          verticalSpaceLarge,
          InputField(),
          verticalSpaceMedium,
          HomeNotifyButton(),
          verticalSpaceMedium,
          HomeImage(),
        ],
      ),
      // body: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
      //     child: Center(
      //       child: Column(
      //         mainAxisSize: MainAxisSize.max,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           verticalSpaceLarge,
      //           Column(
      //             children: [
      //               const Text(
      //                 'Hello, MOBILE UI!',
      //                 style: TextStyle(
      //                   fontSize: 35,
      //                   fontWeight: FontWeight.w900,
      //                 ),
      //               ),
      //               verticalSpaceMedium,
      //               MaterialButton(
      //                 color: Colors.black,
      //                 onPressed: viewModel.incrementCounter,
      //                 child: Text(
      //                   viewModel.counterLabel,
      //                   style: const TextStyle(color: Colors.white),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               MaterialButton(
      //                 color: kcDarkGreyColor,
      //                 child: const Text(
      //                   'Show Dialog',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 onPressed: viewModel.showDialog,
      //               ),
      //               MaterialButton(
      //                 color: kcDarkGreyColor,
      //                 child: const Text(
      //                   'Show Bottom Sheet',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 onPressed: viewModel.showBottomSheet,
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

