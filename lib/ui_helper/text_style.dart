import 'package:chat_app_firebase/utils/size_utils/size_utils.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

//0.37

TextStyle size50Normal(
    {Color? textColor, double? letterSpacing = 0.0, double? height}) =>
    TextStyle(
        color: textColor ?? whiteColor,
        fontSize: SizeUtils().sp(16.8),
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w400,
        inherit: true,
        shadows: [
          Shadow( // bottomLeft
              offset: Offset(-1.5, -1.5),
              color: orangeColor
          ),
          Shadow( // bottomRight
              offset: Offset(1.5, -1.5),
              color: orangeColor
          ),
          Shadow( // topRight
              offset: Offset(1.5, 1.5),
              color: orangeColor
          ),
          Shadow( // topLeft
              offset: Offset(-1.5, 1.5),
              color: orangeColor
          ),
        ]);