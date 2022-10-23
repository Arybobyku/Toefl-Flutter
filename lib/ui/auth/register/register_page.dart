import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:toefl/helper/constants.dart';
import 'package:toefl/helper/color_palette.dart';
import 'package:toefl/ui/widgets/custom_button.dart';
import 'package:toefl/ui/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
import 'package:toefl/routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.generalBackgroundColor,
        elevation: 0,
        title: Text(
          "Create Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black
          ),
        ),
      ),
      backgroundColor: ColorPalette.generalBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomTextFormField(title: "Full Name"),
              SizedBox(height: 15,),
              CustomTextFormField(title: "Phone Number"),
              SizedBox(height: 15,),
              CustomTextFormField(title: "Profession"),
              SizedBox(height: 15,),
              CustomTextFormField(title: "Email"),
              SizedBox(height: 15,),
              CustomTextFormField(title: "Passord"),
              SizedBox(height: 30,),
              CustomButton(text: "Create Account", onTap: (){})
            ],
          ),
        )
      ),
    );
  }
}
