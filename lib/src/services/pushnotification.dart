import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {

  PushNotificationService(FirebaseMessaging firebaseMessaging);

  Future initialise() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      try {
        print(message.notification);
        print(message.notification!.title);
      } catch (e, stackTrace) {
        await FirebaseCrashlytics.instance.recordError(e, stackTrace);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      try {
        print('onResume: $message');
        print(message.notification);
      } catch (e, stackTrace) {
        await FirebaseCrashlytics.instance.recordError(e, stackTrace);
      }
    });
  }
}
