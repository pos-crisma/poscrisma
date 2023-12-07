import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../store/state/user_mobile_state.dart';
import '../store/user_mobile_reducer.dart';
import 'mobile/user_email_mobile.dart';
import 'mobile/user_medical_records_mobile.dart';
import 'mobile/user_name_mobile.dart';
import 'mobile/user_nickname_mobile.dart';
import 'mobile/user_phone_mobile.dart';
import 'web/user_web.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewStore = context.watch<UserMobileReducer>();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.deepPurpleAccent,
      ),
    );

    return Responsive(
      mobile: Builder(
        builder: (context) {
          switch (viewStore.value.pageViewer) {
            case PageViewer.nickname:
              return const UserNicknameMobile();
            case PageViewer.name:
              return const UserNameMobile();
            case PageViewer.phone:
              return const UserPhoneMobile();
            case PageViewer.email:
              return const UserEmailMobile();
            case PageViewer.medicalRecords:
              return const UserMedicalRecordsMobile();
            default:
              return Container();
          }
        },
      ),
      desktop: const UserWeb(),
    );
  }
}
