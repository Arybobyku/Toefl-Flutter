import 'package:flutter/material.dart';
import 'package:toefl/helper/constants.dart';
import 'package:toefl/helper/color_palette.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      onTap: onTap,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorPalette.generalPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }
}
