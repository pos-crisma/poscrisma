// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    BorderRadiusGeometry borderRadiusGeometry =
        const BorderRadius.all(Radius.circular(12)),
    Color boxDecorationColor = Colors.black,
    bool autoFocus = false,
    required this.labelText,
    this.suffixPress,
    this.controller,
    this.keyboardType,
    this.textInputAction,
  })  : _borderRadiusGeometry = borderRadiusGeometry,
        _boxDecorationColor = boxDecorationColor,
        _autoFocus = autoFocus,
        super(
          key: key,
        );

  final String labelText;
  final Color _boxDecorationColor;
  final BorderRadiusGeometry _borderRadiusGeometry;

  final VoidCallback? suffixPress;
  final TextEditingController? controller;

  final bool _autoFocus;

  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization = TextCapitalization.none;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: _boxDecorationColor,
        borderRadius: _borderRadiusGeometry,
      ),
      child: TextFormField(
        autofocus: _autoFocus,
        controller: controller,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          suffixIcon: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: suffixPress,
            child: Icon(
              CupertinoIcons.clear_circled_solid,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}
