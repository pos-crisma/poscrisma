import 'package:flutter/material.dart';

import '../../color/color.dart';

SnackBar customSnackBar({
  required BuildContext context,
  String text = "Convite copiado!",
}) {
  return SnackBar(
    backgroundColor: ColorMode.setColor(
      context: context,
      light: Colors.grey.shade200,
      dark: Colors.grey.shade800,
    ),
    elevation: 0,
    content: Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyLarge! //
          .copyWith(),
    ),
    // action: SnackBarAction(
    //   label: "Entendi",
    //   textColor: Colors.white,
    //   onPressed: () {},
    // ),
    // duration: Durations.extralong4,
    // margin: const EdgeInsets.symmetric(
    //   horizontal: 8.0,
    // ),
    // padding: const EdgeInsets.all(16.0),
    // behavior: SnackBarBehavior.floating,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(8),
    // ),
  );
}
