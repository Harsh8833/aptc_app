import 'package:aptc_app/values/colors.dart';
import 'package:aptc_app/values/text_style.dart';
import 'package:flutter/material.dart';

class PrimaryButtom extends StatelessWidget {
  final Function() onTap;
  final String text;
  const PrimaryButtom({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: MaterialButton(
        minWidth: 150,
        height: 70,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        onPressed: onTap,
        child: Text(
          text,
          style: button,
        ),
        color: AppColor.secondary,
      ),
    );
  }
}
