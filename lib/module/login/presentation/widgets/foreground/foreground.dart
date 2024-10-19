import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';

class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomMultiChildLayout(
        delegate: _ForegroundPartsLayoutDelegate(),
        children: [
          LayoutId(
            id: _ForegroundPart.gradient,
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFFFFFFFF).withOpacity(0.00),
                      const Color(0xFFFFFFFF).withOpacity(0.25),
                      const Color(0xFFFFFFFF).withOpacity(0.57),
                      const Color(0xFFFFFFFF).withOpacity(0.70),
                      const Color(0xFFFFFFFF).withOpacity(0.85),
                    ],
                  ),
                ),
              ),
            ),
          ),
          LayoutId(
            id: _ForegroundPart.termsAndConditionsText,
            child: const IgnorePointer(
              child: Text(
                '''Ao clicar em "Continuar", você aceita os termos de uso do aplicativo e politicas de privacidade''',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  height: 10 / 8,
                  letterSpacing: 0.20,
                  color: Color(0xFF737374),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          LayoutId(
            id: _ForegroundPart.button,
            child: const CustomButton(
              text: 'Continuar com Google',
              iconPath: 'assets/images/google.png',
            ),
          ),
          LayoutId(
            id: _ForegroundPart.promoText,
            child: const IgnorePointer(
              child: Text(
                'Facilidade na gestão de acampamentos',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  height: 31 / 25,
                  letterSpacing: -0.40,
                  color: Color(0xFF737374),
                ),
              ),
            ),
          ),
          LayoutId(
            id: _ForegroundPart.meetAmieText,
            child: const IgnorePointer(
              child: Text(
                'Conheça Acamps',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  height: 30 / 25,
                  letterSpacing: -0.43,
                  color: Color(0xFF171717),
                ),
              ),
            ),
          ),
          LayoutId(
            id: _ForegroundPart.arrow,
            child: const IgnorePointer(
              child: Arrow(),
            ),
          ),
          LayoutId(
            id: _ForegroundPart.messageBubble,
            child: const IgnorePointer(
              child: MessageBubble(),
            ),
          ),
        ],
      ),
    );
  }
}

enum _ForegroundPart {
  gradient,
  messageBubble,
  button,
  meetAmieText,
  arrow,
  promoText,
  termsAndConditionsText,
}

class _ForegroundPartsLayoutDelegate extends MultiChildLayoutDelegate {
  _ForegroundPartsLayoutDelegate();

  @override
  void performLayout(Size size) {
    final gradientSize = layoutChild(
      _ForegroundPart.gradient,
      BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 0.59,
      ),
    );
    positionChild(
      _ForegroundPart.gradient,
      Offset(0, size.height - gradientSize.height),
    );

    const padding = EdgeInsets.only(
      left: 32,
      right: 32,
      bottom: 40,
    );

    final maxWidth = size.width - padding.horizontal;
    final constraints = BoxConstraints.loose(
      Size(
        maxWidth,
        size.height,
      ),
    );

    final termsAndConditionsTextSize = layoutChild(
      _ForegroundPart.termsAndConditionsText,
      constraints,
    );
    final termsAndConditionsTextOffset = Offset(
      padding.left,
      size.height - termsAndConditionsTextSize.height - padding.bottom,
    );
    final termsAndConditionsTextRect =
        termsAndConditionsTextOffset & termsAndConditionsTextSize;
    positionChild(
      _ForegroundPart.termsAndConditionsText,
      termsAndConditionsTextRect.topLeft,
    );

    final buttonSize = layoutChild(
      _ForegroundPart.button,
      constraints.tighten(width: maxWidth),
    );
    final buttonRect = Offset(
          padding.left,
          termsAndConditionsTextRect.top - buttonSize.height - 8,
        ) &
        buttonSize;
    positionChild(
      _ForegroundPart.button,
      buttonRect.topLeft,
    );

    final promoTextSize = layoutChild(_ForegroundPart.promoText, constraints);
    final promoTextRect = Offset(
          padding.left,
          buttonRect.top - promoTextSize.height - 18,
        ) &
        promoTextSize;
    positionChild(
      _ForegroundPart.promoText,
      promoTextRect.topLeft,
    );

    final meetAmieTextSize = layoutChild(
      _ForegroundPart.meetAmieText,
      constraints,
    );
    final meetAmieTextRect = Offset(
          padding.left,
          promoTextRect.top - meetAmieTextSize.height - 20,
        ) &
        meetAmieTextSize;
    positionChild(
      _ForegroundPart.meetAmieText,
      meetAmieTextRect.topLeft,
    );

    final arrowSize = layoutChild(
      _ForegroundPart.arrow,
      constraints,
    );
    final arrowRect = meetAmieTextRect.centerRight.translate(
          arrowSize.width / 4.3,
          -arrowSize.height * 1.2,
        ) &
        arrowSize;
    positionChild(
      _ForegroundPart.arrow,
      arrowRect.topLeft,
    );

    final messageBubbleSize = layoutChild(
      _ForegroundPart.messageBubble,
      constraints.copyWith(maxWidth: size.width - 16),
    );
    final messageBubbleRect = arrowRect.topRight.translate(
          -messageBubbleSize.width / 2.4,
          -messageBubbleSize.height - 24,
        ) &
        messageBubbleSize;
    positionChild(
      _ForegroundPart.messageBubble,
      Offset(
        messageBubbleRect.right > size.width - 8
            ? size.width - messageBubbleSize.width - 8
            : messageBubbleRect.left,
        messageBubbleRect.top,
      ),
    );
  }

  @override
  bool shouldRelayout(_ForegroundPartsLayoutDelegate oldDelegate) {
    return false;
  }
}
