import 'package:bije_academy/ui/common/app_colors.dart';
import 'package:bije_academy/ui/common/app_constants.dart';
import 'package:bije_academy/ui/common/shared_styles.dart';
import 'package:bije_academy/ui/common/ui_helpers.dart';
import 'package:bije_academy/ui/view/home/widgets/home_image.dart';
import 'package:bije_academy/ui/view/home/widgets/home_notify_button.dart';
import 'package:bije_academy/ui/view/home/widgets/home_subtitle.dart';
import 'package:bije_academy/ui/view/home/widgets/home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/common/academy_icon.dart';
import '../../widgets/common/input_field.dart';
import 'home_viewmodel.dart';

// https://www.filledstacks.com/post/how-to-build-a-flutter-website-in-2023/
// https://www.youtube.com/watch?v=yvn6I9hzsJs

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          height: kdDesktopMaxContentHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AcademyIcon(),
                  const Spacer(flex: 2),
                  const HomeTitle(),
                  const HomeSubtitle(),


                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                  ),
                  verticalSpaceSmall,

                  const Row(
                    children: [
                      InputField(),
                      horizontalSpaceSmall,
                      HomeNotifyButton(),
                    ],
                  ),
                  const Spacer(flex: 3)
                ],
              ),
              const HomeImage()
            ],
          ),
          // child: Row(
          //   mainAxisSize: MainAxisSize.max,
          //   children: [
          //     // left side
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Bije Academy',
          //           style: ktsBodyRegular.copyWith(
          //             fontWeight: FontWeight.w800,
          //           ),
          //         ),
          //         const Spacer(),
          //         GradientText(
          //           'MASTER\nFLUTTER',
          //           style: ktsTitleText,
          //           colors: const [
          //             Color(0xff0cff60),
          //             Color(0xff0091fb),
          //           ],
          //         ),
          //         Text(
          //           'ON THE WEB',
          //           style: ktsTitleText,
          //         ),
          //         // Subtitle
          //         Row(
          //           children: [
          //             Text(
          //               'Build amazing software, the right way.',
          //               style: ktsBodyLarge.copyWith(
          //                 fontWeight: FontWeight.w600,
          //               ),
          //             ),
          //             GradientText(
          //               'Sign up to be notified',
          //               style: const TextStyle(
          //                 fontWeight: FontWeight.w600
          //               ),
          //               colors: const [
          //                 Color(0xff0cff60),
          //                 Color(0xff0091fb),
          //               ],
          //             ),
          //           ],
          //         ),
          //
          //         verticalSpaceMedium,
          //
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 100),
          //           child: SvgPicture.asset('assets/sign-up-arrow.svg'),
          //         ),
          //
          //         verticalSpaceSmall,
          //
          //         Row(
          //           children: [
          //             // Container(
          //             //   width: kdDesktopMaxContentWidth * 0.3,
          //             //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          //             //   decoration: BoxDecoration(
          //             //     color: const Color(0xFF232323),
          //             //     borderRadius: BorderRadius.circular(8),
          //             //   ),
          //             //   child: const TextField(
          //             //     decoration: InputDecoration.collapsed(
          //             //       hintText: 'Enter your email',
          //             //       hintStyle: TextStyle(
          //             //         color: Color(0xff989898),
          //             //       ),
          //             //       filled: true,
          //             //       fillColor: Color(0xff232323),
          //             //     ),
          //             //   ),
          //             // ),
          //             horizontalSpaceSmall,
          //             Container(
          //               padding: const EdgeInsets.symmetric(
          //                 horizontal: 20,
          //                 vertical: 16,
          //               ),
          //               alignment: Alignment.center,
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(8),
          //               ),
          //               child: const Text(
          //                 'Notify Me',
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 20),
          //               ),
          //             ),
          //           ],
          //         ),
          //         const Spacer(flex: 3),
          //       ],
          //     ),
          //     // Container(
          //     //   width: 450,
          //     //   color: Colors.amber,
          //     // ),
          //     // ClipRRect(
          //     //   borderRadius: BorderRadius.circular(20),
          //     //   child: Image.asset(
          //     //     'assets/bije.png',
          //     //     // 'master-web-hero-image.png',
          //     //     width: kdDesktopMaxContentWidth * 0.4,
          //     //     height: double.infinity,
          //     //     fit: BoxFit.contain,
          //     //   ),
          //     // ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

