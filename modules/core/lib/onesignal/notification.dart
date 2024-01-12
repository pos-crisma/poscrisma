import 'package:onesignal_flutter/onesignal_flutter.dart';
// c1df21e9-b5e8-4765-91df-030ab808dc50

mixin PushNotification {
  static void initialize() {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

    OneSignal.initialize("c1df21e9-b5e8-4765-91df-030ab808dc50");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    OneSignal.Notifications.requestPermission(true);
  }
}
