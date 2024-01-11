// import 'package:core/core.dart';
// import 'package:flutter/material.dart';

// import '../feature/setting/provider/controller/store/setting_store.dart';
// import '../feature/setting/view/setting_page.dart';

// class SettingModule extends Module {
//   @override
//   void binds(Injector i) {
//     i.add(SettingReducer.new);
//   }

//   @override
//   void routes(RouteManager r) {
//     r.child(
//       "/",
//       child: (_) => const SettingPage(),
//       transition: TransitionType.fadeIn,
//     );
//     r.child(
//       '/config',
//       child: (context) => Scaffold(
//         appBar: AppBar(),
//       ),
//     );
//   }
// }
