import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

final messaging = FirebaseMessaging.instance;

class MessagingInstance {
  Future<void> initNotification() async {
    if (!kIsWeb) {
      await messaging.requestPermission();
      await messaging.setAutoInitEnabled(true);

      final fcmToken = await messaging.getToken();
      final apnsToken = await messaging.getAPNSToken();

      if (kDebugMode) {
        print('Firebase Messaging Token: $fcmToken');
        print('APNs Token: $apnsToken');
      }

      messaging.getInitialMessage().then((value) {
        if (kDebugMode) {
          print('messaging.getInitialMessage(): $value');
        }
      });
    }
  }
}
