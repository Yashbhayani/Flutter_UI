import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({width, height, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).make()
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
