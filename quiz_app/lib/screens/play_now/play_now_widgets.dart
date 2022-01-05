import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../reusable_widgets/gradient_icon.dart';
import '../../reusable_widgets/custom_text.dart';
import '../../reusable_widgets/custom_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../levels.dart';

class PlayNowBodyTitleWidget extends StatelessWidget {
  const PlayNowBodyTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText('Let\'s Play!', 25.0, Colors.white, FontWeight.bold),
        CustomText('Play now and Level up', 20.0, Colors.white, FontWeight.bold),
      ],
    );
  }
}

class PlayNowTitleIconWidget extends StatelessWidget {
  const PlayNowTitleIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const GradientIcon(
          Icons.quiz,
          150.0,
          LinearGradient(
            colors: <Color>[
              Colors.purple,
              Colors.blue,
              Colors.red,
              Colors.yellow,
              Colors.orange,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText(
              'Quizzles',
              textStyle: GoogleFonts.nunito(
                color: const Color(0xff00fac3),
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              )
              ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
        )
      ],
    );
  }
}

class PlayNowButtonsWidget extends StatelessWidget {
  const PlayNowButtonsWidget({Key? key}) : super(key: key);

  void gotoLevelsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Levels()),
    );
  }

  void displayAboutSnackbar(BuildContext context) {
   final snackBar = SnackBar(
            backgroundColor: const Color(0xff32167c),
            content: const CustomText('A fun quiz app which tests user about any topic with increasing difficulty. Version 1.0.0', 12.0, Colors.white, FontWeight.bold),
            action: SnackBarAction(
              label: 'Dismiss',
              textColor: const Color(0xff00fac3),
              onPressed: () {},
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding:  const EdgeInsets.all(8.0),
          child: CustomButtonWidget("Play Now", 20.0, Colors.white, null,
               const Color(0xff6949fd), 300.0, 60.0, () => gotoLevelsPage(context), FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButtonWidget(
              "About",
              20.0,
              const Color(0xff6949fd),
              Border.all(color: const Color(0xff6949fd), width: 2.0),
              Colors.transparent,
              300.0,
              60.0,
              () => displayAboutSnackbar(context),
              FontWeight.bold),
        ),
      ],
    );
  }
}
