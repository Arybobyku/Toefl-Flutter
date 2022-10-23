import 'package:flutter/material.dart';
import 'package:toefl/helper/constants.dart';
import 'package:toefl/helper/color_palette.dart';
import 'package:toefl/ui/widgets/custom_button.dart';
import 'package:toefl/ui/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
import 'package:toefl/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset("images/logo.png"),
            SizedBox(
              height: 25,
            ),
            Text(
              "Login and Start\nTest and Consultation",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(title: "Email"),
            SizedBox(height: 20),
            CustomTextFormField(title: "Password"),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Forget Password",
                textAlign: TextAlign.right,
                style: TextStyle(color: ColorPalette.generalDarkGrey),
              ),
            ),
            SizedBox(height: 30),
            CustomButton(
              text: "Login",
              onTap: () {},
            ),
            SizedBox(height: 10),
           GestureDetector(
             onTap: (){
               Get.toNamed(Routes.register);
             },
             child:  SizedBox(
               width: double.infinity,
               child: Text(
                 "Create New Account",
                 textAlign: TextAlign.center,
                 style: TextStyle(color: ColorPalette.generalDarkGrey),
               ),
             ),
           )
          ],
        ),
      )),
    );
  }
}
