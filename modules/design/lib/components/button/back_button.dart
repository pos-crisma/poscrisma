import 'package:design/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    IconData backIcon = CupertinoIcons.chevron_left,
    String backTitle = "Voltar",
    Color dark = Colors.white,
    Color light = Colors.black,
    this.popResult,
  })  : _backTitle = backTitle,
        _backIcon = backIcon,
        _dark = dark,
        _light = light;

  final IconData _backIcon;
  final String _backTitle;

  final Color _dark;
  final Color _light;
  final bool? popResult;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => Navigator.of(context).pop(popResult),
      child: Row(
        children: [
          Icon(
            _backIcon,
            color: ColorMode.setColor(
              context: context,
              light: _light,
              dark: _dark,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            _backTitle,
            style: Theme.of(context)
                .textTheme
                .bodyLarge! //
                .copyWith(
                  color: ColorMode.setColor(
                    context: context,
                    light: _light,
                    dark: _dark,
                  ),
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
