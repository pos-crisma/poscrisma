import "package:flutter/material.dart";

InputDecoration borderInputDecoration({
  required Color borderColor,
  required Color fillColor,
  double borderWidth = 3,
  double borderCircular = 50,
}) {
  return InputDecoration(
    filled: true,
    fillColor: fillColor,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 16,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: borderWidth,
        color: borderColor,
      ),
      borderRadius: BorderRadius.circular(borderCircular),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: borderWidth,
        color: borderColor,
      ),
      borderRadius: BorderRadius.circular(borderCircular),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: borderWidth,
        color: borderColor,
      ),
      borderRadius: BorderRadius.circular(borderCircular),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: borderWidth,
        color: Colors.redAccent,
      ),
      borderRadius: BorderRadius.circular(borderCircular),
    ),
  );
}
