import 'package:design/design.dart';
import 'package:feed/src/feature/content/view/mobile/content_mobile.dart';
import 'package:feed/src/feature/content/view/web/content_web.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContentMobile(),
      desktop: ContentWeb(),
    );
  }
}
