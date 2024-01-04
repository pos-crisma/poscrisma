import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'mobile/warehouse_mobile.dart';

class WarehousePage extends StatelessWidget {
  const WarehousePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const WarehouseMobile(),
      desktop: Container(),
    );
  }
}
