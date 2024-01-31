import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobile/game_mobile.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return GameMobile();
  }
}
