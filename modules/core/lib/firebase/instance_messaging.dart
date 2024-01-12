import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

final messaging = FirebaseMessaging.instance;

class MessagingInstance {
  Future<void> initNotification() async {
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

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  // Future<void> _firebaseMessagingBackgroundHandler(
  //     RemoteMessage message) async {
  //   // If you're going to use other Firebase services in the background, such as Firestore,
  //   // make sure you call `initializeApp` before using other Firebase services.

  //   print("Handling a background message: ${message.messageId}");
  // }
}
