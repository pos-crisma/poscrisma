import 'package:design/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    IconData backIcon = CupertinoIcons.chevron_left,
    String backTitle = "Voltar",
  })  : _backTitle = backTitle,
        _backIcon = backIcon;

  final IconData _backIcon;
  final String _backTitle;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => Navigator.of(context).pop(),
      child: Row(
        children: [
          Icon(
            _backIcon,
            color: ColorMode.setColor(
              context: context,
              light: Colors.black,
              dark: Colors.white,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            _backTitle,
            style: Theme.of(context)
                .textTheme
                .bodyLarge! //
                .copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
