import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toefl/routes.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    navigated(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }

  navigated(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () async {
      Get.offAllNamed(Routes.onBoarding);
    });
  }
}
