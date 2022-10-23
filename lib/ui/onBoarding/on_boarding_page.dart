import 'package:flutter/material.dart';
import 'package:toefl/helper/constants.dart';
import 'package:toefl/helper/color_palette.dart';
import 'package:toefl/ui/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:toefl/routes.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Welcome to\nMillenium English",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/onBoarding.png"),
                  SizedBox(height: 50),
                  Text(
                    Constants.onBoardingMessage,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            CustomButton(
              text: "Get Started",
              onTap: (){
                Get.toNamed(Routes.login);
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      )),
    );
  }
}
