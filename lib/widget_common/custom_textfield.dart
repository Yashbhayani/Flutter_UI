import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customWidget({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              title!.text.color(redColor).fontFamily(semibold).size(16).make()),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
            hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      ),
      5.heightBox,
    ],
  );
}
