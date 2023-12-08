// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    BorderRadiusGeometry borderRadiusGeometry =
        const BorderRadius.all(Radius.circular(12)),
    Color boxDecorationColor = Colors.black,
    bool autoFocus = false,
    bool enabled = true,
    int? maxLine = 1,
    required this.labelText,
    this.suffixPress,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    FocusNode? focusNote,

    EdgeInsets edgeInsets = const EdgeInsets.symmetric(horizontal: 8.0),
  })  : _borderRadiusGeometry = borderRadiusGeometry,
        _boxDecorationColor = boxDecorationColor,
        _autoFocus = autoFocus,
        _enabled = enabled,
        _edgeInsets = edgeInsets,
        _focusNode = focusNote,
        _maxLine = maxLine;

  final EdgeInsets _edgeInsets;
  final String labelText;
  final Color _boxDecorationColor;
  final BorderRadiusGeometry _borderRadiusGeometry;

  final VoidCallback? suffixPress;
  final TextEditingController? controller;

  final bool _autoFocus;
  final bool _enabled;

  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization = TextCapitalization.none;
  final TextInputAction? textInputAction;

  final FocusNode? _focusNode;

  final int? _maxLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _edgeInsets,
      child: ClipRRect(
        borderRadius: _borderRadiusGeometry,
        child: TextFormField(
          enabled: _enabled,
          focusNode: _focusNode,
          autofocus: _autoFocus,
          controller: controller,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          maxLines: _maxLine,
          decoration: InputDecoration(
            labelText: labelText,
            filled: true,
            fillColor: _boxDecorationColor,
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
            contentPadding: const EdgeInsets.only(
              top: 12,
              left: 12,
              right: 0,
              bottom: 12,
            ),
          ),
        ),
      ),
    );
  }
}
