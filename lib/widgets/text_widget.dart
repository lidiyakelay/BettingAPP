
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

Widget TextWidget(
    String text, double size, Color color, FontWeight fontWeight, TextAlign textAlign) {
  return Text(text,
          textAlign: textAlign?? TextAlign.right ,
          style:  TextStyle(
                 decoration: TextDecoration.none,
                  color:color ?? Colors.white,
                  fontSize: size ?? Dimensions.font26,
                  fontFamily: 'inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: fontWeight?? FontWeight.w600,
                  )
  );
}
