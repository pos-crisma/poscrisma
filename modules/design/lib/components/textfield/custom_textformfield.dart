// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    BorderRadiusGeometry borderRadiusGeometry =
        const BorderRadius.all(Radius.circular(12)),
    Color boxDecorationColor = Colors.black,
    bool autoFocus = false,
    bool enabled = true,
    bool isSecurity = false,
    bool obscureText = false,
    int? maxLine = 1,
    required this.labelText,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    FocusNode? focusNote,
    this.obscureOnPress,
    EdgeInsets edgeInsets = const EdgeInsets.symmetric(horizontal: 8.0),
  })  : _borderRadiusGeometry = borderRadiusGeometry,
        _boxDecorationColor = boxDecorationColor,
        _autoFocus = autoFocus,
        _enabled = enabled,
        _edgeInsets = edgeInsets,
        _focusNode = focusNote,
        _maxLine = maxLine,
        _isSecurity = isSecurity,
        _obscureText = obscureText;

  final EdgeInsets _edgeInsets;
  final String labelText;
  final Color _boxDecorationColor;
  final BorderRadiusGeometry _borderRadiusGeometry;

  final VoidCallback? obscureOnPress;
  final TextEditingController? controller;

  final bool _autoFocus;
  final bool _enabled;

  final bool _isSecurity;
  final bool _obscureText;

  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization = TextCapitalization.none;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;

  final FocusNode? _focusNode;

  final int? _maxLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _edgeInsets,
      child: CupertinoTextField(
        enabled: _enabled,
        focusNode: _focusNode,
        autofocus: _autoFocus,
        controller: controller,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        maxLines: _maxLine,
        expands: false,
        obscureText: _obscureText,
        decoration: BoxDecoration(
          color: _boxDecorationColor,
          borderRadius: _borderRadiusGeometry,
        ),
        inputFormatters: inputFormatters,
        placeholder: labelText,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        style: TextStyle(
          color: SystemMode.isDark(context) ? Colors.white : Colors.black,
        ),
        suffix: _isSecurity
            ? CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: obscureOnPress,
                child: Icon(
                  _obscureText
                      ? CupertinoIcons.eye_fill
                      : CupertinoIcons.eye_slash_fill,
                  color: Colors.grey.shade600,
                ),
              )
            : CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => controller?.clear(),
                child: Icon(
                  CupertinoIcons.clear_circled_solid,
                  color: Colors.grey.shade600,
                ),
              ),
      ),
    );
  }
}
