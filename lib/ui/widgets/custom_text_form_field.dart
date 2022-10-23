import 'package:flutter/material.dart';
import 'package:toefl/helper/constants.dart';
import 'package:toefl/helper/color_palette.dart';
import 'package:toefl/ui/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:toefl/routes.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, color: ColorPalette.generalDarkGrey),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorPalette.generalGrey,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: TextFormField(
            decoration: InputDecoration(
                filled: false,
                hoverColor: ColorPalette.generalPrimaryColor,
                hintStyle: TextStyle(color: ColorPalette.generalPrimaryColor),
                floatingLabelStyle:
                    TextStyle(color: ColorPalette.generalPrimaryColor),
                focusColor: ColorPalette.generalPrimaryColor,
                border: InputBorder.none),
          ),
        )
      ],
    );
  }
}
