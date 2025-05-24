import 'package:flutter/material.dart';
import 'package:lab_connect/constants/text_style.dart';
import 'package:lab_connect/screen/on_boarding_screen.dart';
import 'package:lab_connect/widgets/progress_bar/liner_progress_bar.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mqData = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: mqData.height * 0.1),
            Image.asset('lib/assets/icons/logo.png', width: mqData.width * 0.4),
            const SizedBox(height: 20),
            Text(
              "LabConnect",
              style: AppTextStyles.size36(
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryDark,
                fontFamily: "secondary",
              ),
            ),
            Spacer(),
            Text(
              "Portable Lab || Guest speaker",
              style: AppTextStyles.size18(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: mqData.width * 0.9,
              child: LinerProgressBar(progress: 0.75),
            ),

            SizedBox(height: mqData.height * 0.1),
          ],
        ),
      ),
    );
  }
}
